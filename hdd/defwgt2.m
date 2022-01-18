defplant;

gps=2e-3;
wpsn=2*pi*100;
wpsd=2*pi*0.01;
Wps=ss(tf([1 wpsn],[1 wpsd])*gps);
wtn = 2*pi*800;
ztn = 1;
wtd = 2*pi*4500;
ztd = 0.3;
gt = 22;
numwt = [1 2*ztn*wtn wtn^2];
denwt = [1 2*ztd*wtd wtd^2];

Wt0 = ss(tf(numwt,denwt));
Wt = Wt0*Wt0*gt;
Pm = 45*(pi/180);
Gm = 2;
Gmmin = 1/cos(Pm);
if Gm<Gmmin
    error('Gm is small');
end
sgm = (Gm^2-1)/(2*Gm*(Gm*cos(Pm)-1));
rrr = ((Gm-1)^2+2*Gm*(1-cos(Pm)))/(2*Gm*(Gm*cos(Pm)-1));
Wa = (sgm^2-sgm-rrr^2)/rrr;
Wb = (sgm-1)/rrr;

Weps = 0.04;
Wps_g = frd(Wps,w);
Wt_g = frd(Wt,w);

Dm_g = (Pfpert_g - Pn_g)/Pn_g;

figure(3);
bodemag(Wt_g,'-',Dm_g,':',Wps_g,'--');
legend('Wt','\Delta_m','Wps');

big;







