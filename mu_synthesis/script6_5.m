script6_4;

Dm_g = (Parray_g-Pn_g)/Pn_g;
Wt1 = make_wt(28,0.5,30,0.1);
Wt2 = make_wt(15,0.7,150,0.7);
Wt = Wt1*Wt1*Wt2*0.38;
Wt_g = frd(Wt,w);

figure(3);
bodemag(Dm_g,Wt_g,'--');
legend('Delta','Wt');
big;

InputUnc = ultidyn('InputUnc',[1 1]);
Ppert = Pn*(1+InputUnc*Wt);

Wps = tf([1/50 1],[1 1e-3])*30;
Weps = 1e-4;

defgp_mu1;

dkitopt = dksynOptions(...
    'DisplayWhileAutoIter','on',...
    'NumberOfAutoIterations',4,...
    'FrequencyVector',logspace(1,4,200));

[Kmu,clp,bnd] = dksyn(G,1,1,dkitopt);

% µ制御器のボード線図
figure;
bode(Kmu);

% ロバスト性能の確認（設計I）
bodemag(Ppert/(1+Ppert*Kmu),1/Wps,'--');
legend('P/(1+PK)','1/Wps');
xlim([1e-1 1e4]);

% 相補感度関数のゲイン線図
T = Ppert*Kmu/(1+Ppert*Kmu);
bodemag(T);
xlim([1e-1 1e4]);

wn = 45;
zeta = 0.7;
alpha = zeta*wn;
s = tf('s');
M = wn^2*alpha/((s^2+2*zeta*wn*s+wn^2)*(s+alpha));
GFF = M/Ppert.nominal;

%規範モデルMのステップ応答
figure;
step(M);
xlim([0 0.5]);
%Gffのステップ応答
figure;
step(GFF);
xlim([0 0.5]);
ylim([-3 3]);

big;



