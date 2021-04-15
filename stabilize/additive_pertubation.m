clear; close all;
omega_n=ureal('omega',1,'percent',20);
zeta=ureal('zeta',0.1,'percent',20);
s=tf('s');
P=omega_n^2/(s^2+2*zeta*omega_n*s+omega_n^2);
w=logspace(-2,2,100);
P_g=ufrd(P,w); %uncertain frequency response model
Dm_g=(P_g-P_g.nominal)/P_g.nominal;
Da_g=P_g-P_g.nominal;
figure(1);
bodemag(P_g,Dm_g,'--');
legend('P','\Delta_m');
title('Multiplicative pertubation');
figure(2);
bodemag(P_g,Da_g,'--');
legend('P','\Delta_a');
title('Additive pertubation');


big;
