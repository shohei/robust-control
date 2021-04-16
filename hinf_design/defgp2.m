defpert; 

s=tf('s');
Ws=15/(s+1.5e-2);
Wps=Ws*0.8;
Wt=Wm;
Weps=5e-4;
figure(3);
bodemag(Ws,':',Wps,Wps*P.nominal,'-.',Wt,'--',w);
legend('Ws','Wps','Wps*Ps','Wt');
Pn=P.nominal;
systemnames='Pn Wps Wt Weps';
inputvar = '[w1; w2; u]';
outputvar = '[Wps; Wt; Pn+Weps]';
input_to_Pn = '[w1 - u]';
input_to_Wps = '[Pn + Weps]';
input_to_Wt = '[u]';
input_to_Weps='[w2]';
G=sysic;

big;

[K,clp,gamma_min,hinf_info]=hinfsyn(G,1,1,'display','on');

figure(4);
w=logspace(0,2,100);
bodemag(K,P.nominal,'--',w);
legend('K','P.nominal');
big;

figure(5);
T=P.nominal*K/(1+P.nominal*K);
S=1-T;
w=logspace(0,2,100);
bodemag(T,S,1/(Wps*P.nominal),1/Wt,w);
legend('T','S','1/Wps P','1/Wt');
big;

figure(6);
step(P*K/(1+P*K));
big;

figure(7);
impulse(P/(1+P*K));
xlim([0 2]);
big;

pole(Pn)
zero(K)