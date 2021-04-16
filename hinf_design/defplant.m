clear; close all;

m1=0.8;
m2=0.2;
k1=100;
k2=ureal('k2',300,'percent',20);
c1=1;
c2=0.3;
Ks=100;
M=[m1 0
    0 m2];
C=[c1+c2 -c2
    -c2  c2];
K=[k1+k2 -k2
    -k2 k2];
F=[Ks
    0];
iM=inv(M);
Ap=[zeros(2,2) eye(2,2)
     -iM*K -iM*C];
Bp=[zeros(2,1)
     iM*F];
Cp=[0 1 0 0];
Dp=0;
P=ss(Ap,Bp,Cp,Dp);
figure(1);
bode(P,{1e0,1e2});

big;

