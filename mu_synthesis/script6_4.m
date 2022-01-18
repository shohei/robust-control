clear; close all;
smass_param
J3n = J3;
Kan = Ka;
J3 = ureal('J3',J3n,'percent',50);
Ka = ureal('Ka',Kan,'percent',10);
Ppert = defssmodel(J1,J2,J3,Ka,Kb,D1,D2,D3,Da,Db);
Pn = Ppert.nominal;

w = logspace(-1,4,500);
rng('default');
Parray  = usample(Ppert,100);
Parray_g = frd(Parray,w);
Pn_g = frd(Pn,w);

figure(1);
bode(Parray_g);
legend(['Ppert']);
big;

[G,Delta]=lftdata(Ppert);
size(Delta)












