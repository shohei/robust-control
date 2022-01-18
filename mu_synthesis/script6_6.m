script6_5;

[p,z] = pzmap(Pn);
z_omega = abs(z);
z_zeta = -real(z)./abs(z);

Fn1 = notch_f(1.9152e2,1.0218e-2,0.7);
Fn2 = notch_f(1.0017e3,1.5405e-3,0.7);

Mt = ss(wn^2*alpha/((s^2+2*zeta*wn*s+wn^2)*(s+alpha)));
M = Mt*Fn1*Fn2;
Gff = ss(M/tf(Pn));
Gff = minreal(Gff,1e-5);

figure;
bodemag(Gff,GFF,'--');
legend('Gff with Notch filter','Gff');
big;

% ノッチフィルタ導入後の規範モデルMと
% フィードフォワードモデルGffの応答（ノミナルモデル）
figure;
step(M);
figure;
step(Gff);
big;

% ノッチフィルタ導入後の制御入力uと
% 出力yのステップ応答
% →やり方わからず






