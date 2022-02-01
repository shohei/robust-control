gmax = 10; gmin = 0;
k = hinfsyn(G, 1, 1, gmin, gmax, 0.1, 2);

w = logspace(-1, 4, 100);
K_g = frsp(k, w);
Pr_g = frsp(Pr, w);

figure;
vplot('liv,lm', K_g,Pr_g,'--');
xlabel('Frequencey[rad/s]');
ylabel('Gain');
legend('K','Pr');
big;

