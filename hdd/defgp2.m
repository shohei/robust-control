defwgt2;

systemnames = 'Pn Wps Wt Weps Wa Wb';
inputvar = '[w1; w2; u]';
outputvar = '[Wps; Wt; Wa+Wb; Pn+Weps]';
input_to_Pn = '[w1 - u]';
input_to_Wps = '[Pn + Weps]';
input_to_Wt = '[u]';
input_to_Wa = '[w1 - u]';
input_to_Wb = '[u]';
input_to_Weps = '[w2]';
G = sysic;

Kopt= hinfsyn(G,1,1,'display','on');
Ksub= hinfsyn(G,1,1,'display','on','gmax',1,'gmin',1);
bode(Kopt,':',Ksub','-',w);
legend('Kopt','Ksub');

big;

figure();
Ts = PlantData.Ts;
Kd = c2d(Ksub,Ts,'tustin');
bodemag(Ksub,'--',Kd);
legend('Ksub','Kd');
big;



% [K,clp,gamma_min,hinf_info]=hinfsyn(G,1,1,'display','on');
% 
% bode(K);
% title('Hoo controller');
% big;
% 
% L=Pn*K;
% T=feedback(L,1);
% S=feedback(1,L);
% M=feedback(Pn,K);
% figure();
% bodemag(T,'-',1/Wt,':',S,'--',1/(Wps*Pn),'-.',w);
% legend('T','1/Wt','S','1/(Wps*P)');
% ylim([-100 50]);
% big;
% 
% figure();
% margin(T);
% title('一巡伝達関数の安定余裕');
% 
% 
% L=Pfpert*K;
% T=feedback(L,1);
% S=feedback(1,L);
% M=feedback(Pfpert,K);
% figure();
% step(T,10e-3);
% ylabel('output [track]');
% title('目標値ステップ応答');
% 
% figure();
% step(M*0.01,5e-3);
% ylabel('output [track]');
% title('外乱ステップ応答')
% 
% big;
% 

