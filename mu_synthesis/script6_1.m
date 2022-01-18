clear; close all;
m0 = 1;
k0 = 100;
c = 1;
Delta_m = m0*0.1;
Delta_k = k0*0.1;
delta_1 = ureal('delta_1',0);
delta_2 = ureal('delta_2',0);
Delta = blkdiag(delta_1,delta_2);
A = [0, 1;
    -k0/m0, -c/m0];
B = [0,0,0;
    -1/m0, -1/m0, 1/m0];
C = [-k0/m0*Delta_m, -c/m0*Delta_m;
    Delta_k, 0;
    1, 0];
D = [-Delta_m/m0, -Delta_m/m0, -Delta_m/m0;
    0, 0, 0;
    0, 0, 0];
G = ss(A,B,C,D);
P = lft(Delta,G);
bode(P);

big;


