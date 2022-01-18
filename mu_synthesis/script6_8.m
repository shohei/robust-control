clear; close all;
smass_param;
J3n = J3;
Kan = Ka;
scl = 0.25;
J3 = ureal('J3',J3n,'percent',50*scl);
Ka = ureal('Ka',Kan,'percent',10*scl);
Ppert = defssmodel(J1,J2,J3,Ka,Kb,D1,D2,D3,Da,Db);
Pn = Ppert.nominal;

Wt = makeweight2(0.1,500,10,0.7);

%Wps = tf([1/50 1],[1 1e-3])*60;
Wps = tf([1/50 1],[1 1e-3])*500;
Weps = 1e-4;

defgp_mu2;
dkitopt = dksynOptions('DisplayWhileAutoIter','on',...
    'NumberOfAutoIterations',10,...
    'MixedMU','on',...
    'FrequencyVector',logspace(1,4,200));

[Kmu, Gclp,mubnd,dkinfo] = dksyn(G,1,1,dkitopt);

figure;
M = Ppert/(1+Ppert*Kmu);
bodemag(M,1/Wps,'--');
legend('M','1/Wps');
xlim([1e-1 1e4]);
big;








