clear; close all;
m0 = 1;
k0 = 100;
c = 1;
m = ureal('m',m0,'percent',10);
k = ureal('k',k0,'percent',10);
E = diag([1,m]);
iE = inv(E);
A = iE*[0, 1;
    -k, -c];
B = iE*[0;
        1];
C = [1,0];
D = [0];
P = ss(A,B,C,D);

[G,Delta,BlkStruc,NormUNC] = lftdata(P);
size(Delta)
NormUNC{:}
P


