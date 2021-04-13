clear; close all;

s = tf('s'); 
M=1;
Pn = 1/(M*s^2);

alpha = -0.5;
K1 = alpha^2*M - 2*alpha*M*s/(0.01*s+1);
alpha = -2.5;
K2 = alpha^2*M - 2*alpha*M*s/(0.01*s+1);

Tn1 = feedback(Pn*K1,1);
Tn2 = feedback(Pn*K2,1);

figure(1);
step(Tn1,'--',Tn2,10);
ylim([0 1.4]);
legend('\alpha=-0.5','\alpha=-2.5');
figure(2);
bodemag(Tn1,'--',Tn2);
legend('\alpha=-0.5','\alpha=-2.5');

big;

