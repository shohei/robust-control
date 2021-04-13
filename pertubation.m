nominal;

m1 = ureal('m1',0.8,'percent',10);
m2 = M - m1;
k = ureal('k',300,'percent',10);
c = ureal('c',1,'percent',10);
P = (c*s*k)/(s^2*(m1*m2*s^2+(m1+m2)*c*s+(m1+m2)*k));
P = usample(P,60);
figure(3);
bodemag(Pn,P,'--',{1e1,1e3});
legend('One mass system','Two mass system with pertubation');

big;