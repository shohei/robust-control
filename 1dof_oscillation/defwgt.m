numws = [1/100 1];
denws = [1/0.01 1];
wsgain = 1000;
Ws = nd2sys(numws, denws, wsgain);
numwt = [1 10];
denwt = [1 1000];
wtgain = 10;
Wt = nd2sys(numwt, denwt, wtgain);
w = logspace(-1, 4, 100);
Ws_g = frsp(Ws, w);
Wt_g = frsp(Wt, w);
figure;
vplot('liv,lm',Ws_g,'-',Wt_g,'--');
xlabel('Frequencey[rad/s]');
ylabel('Gain');
legend('Ws','Wt');
big;

