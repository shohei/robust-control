m=0.01;
k=1;
c=0.001;
ap = [0 1;
     -k/m -c/m];
bp = [0; 1/m];
cp = [1 0];
dp = [0];
Pr = pck(ap,bp,cp,dp);
w = logspace(0,2,100);
Pr_g = frsp(Pr, w);
figure;
vplot('bode',Pr_g);

big;