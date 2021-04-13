pertubation;

T1 = feedback(P*K1,1);
T2 = feedback(P*K2,1);
figure(4);
step(T1,'--',T2,10);
ylim([0 1.4]);
legend('\alpha=-0.5','\alpha=-2.5');
figure(5);
nyquist(P*K1);
axis([-1.5 0.5 -1 1]);
legend('\alpha=-0.5');
figure(6);
nyquist(P*K2);
axis([-1.5 0.5 -1 1]);
legend('\alpha=-2.5');
big;