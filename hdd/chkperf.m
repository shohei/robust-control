defgp;

L=Pn*K;
T=feedback(L,1);
S=feedback(1,L);
M=feedback(Pn,K);
figure(5);
bodemag(T,'-',1/Wt,':',S,'--',1/(Wps*Pn),'-.',w);
legend('T','1/Wt','S','1/(Wps*P)');
ylim([-100 50]);
big;