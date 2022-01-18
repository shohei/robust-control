function W = makeweight2(gL,wx,gH,zeta)
wH = wx*sqrt(gH);
wL = wx*sqrt(gL);
num = [1,2*zeta*wL,wL^2]*gH;
den = [1,2*zeta*wH,wH^2];
W = ss(tf(num,den));

end