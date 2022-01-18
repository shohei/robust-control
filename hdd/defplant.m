clear; close all;

load mainPlantDataV1

Pn=PlantData.Pn;
Pn.inputDelay = 0;

Pf=PlantData.Pf;
Pf.inputDelay = 0;

Pfpert=PlantData.Pfpert;

figure(1);
f=logspace(0,5,600);
w=2*pi*f;
Pn_g=frd(Pn,w);
Pf_g=frd(Pf,w);
bodemag(Pn_g,'--',Pf_g);
ylim([-50 100]);
legend('Nominal model','Full-order model');
title('剛体モデルとフルオーダモデル')


figure(2);
Pfpert.inputdelay=0;
Pfpert_g = frd(Pfpert,w);
bodemag(Pfpert_g);
ylim([-50 100]);
title('摂動を持つフルオーダモデル')

big;




