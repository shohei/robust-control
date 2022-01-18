defwgt;

systemnames = 'Pn Wps Wt Weps';
inputvar = '[w1; w2; u]';
outputvar = '[Wps; Wt; Pn+Weps]';
input_to_Pn = '[w1 - u]';
input_to_Wps = '[Pn + Weps]';
input_to_Wt = '[u]';
input_to_Weps = '[w2]';
G = sysic;

[K,clp,gamma_min,hinf_info]=hinfsyn(G,1,1,'display','on');

bode(K);
title('Hoo controller');

big;