defplant;

gps=5e-3;
Wps=ss(gps);

wtn=2*pi*800;
ztn=1;
wtd=2*pi*4500;
ztd=0.3;
gt=22;
numwt=[1 2*ztn*wtn wtn^2];
denwt=[1 2*ztd*wtd wtd^2];
Wt0=ss(tf(numwt,denwt));
Wt=Wt0*Wt0*gt;
Weps=0.04;
Wps_g=frd(Wps,w);
Wt_g=frd(Wt,w);

Dm_g=(Pfpert_g-Pn_g)/Pn_g;
figure(3);
bodemag(Wt_g,'-',Dm_g,':',Wps_g,'--');
legend('Wt','\Delta_m','Wps');

big;

