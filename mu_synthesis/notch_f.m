function [F] = notch_f(omega_n,zeta_n,zeta_d)
num = [1,2*zeta_n*omega_n,omega_n^2];
den = [1,2*zeta_d*omega_n,omega_n^2];
F = ss(tf(num,den));

end