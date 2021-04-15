clear; close all;
s=tf('s');
Pn=1/(s+1);
Wm=2*s/(s+10);
delta=ultidyn('delta',[1 1],'SampleStateDim',4);
P=(1+Wm*delta)*Pn;
P=usample(P,50);
w=logspace(-2,2,100);
bodemag(P,Pn,w);

big;


