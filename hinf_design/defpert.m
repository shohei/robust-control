defplant;

w=logspace(0,3,100);
P_g=ufrd(P,w);
Dm_g=(P_g-P_g.nominal)/P_g.nominal;
s=tf('s');
Wm=3*s^2/(s^2+18*s+45^2);
figure(2);
bodemag(Dm_g,'--',Wm,'r-',w);
legend('\Delta_m','Wm');

big;