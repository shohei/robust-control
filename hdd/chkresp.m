chkperf;

L=Pfpert*K;
T=feedback(L,1);
S=feedback(1,L);
M=feedback(Pfpert,K);
figure(6);
step(T,10e-3);
ylabel('output [track]');
title('目標値ステップ応答');

figure(7);
step(M*0.01,5e-3);
ylabel('output [track]');
title('外乱ステップ応答')

big;