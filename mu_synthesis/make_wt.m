function Wt = make_wt(fn,zn,fd,zd)
wd = 2*pi*fd;
wn = 2*pi*fn;
Wt = ss(tf([1 2*zn*wn wn^2], [1 2*zd*wd wd^2])*(wd^2/wn^2));

end