[a,b,c,d] = unpck(Pr);
G_Pr = tf(ss(a,b,c,d));
[a,b,c,d] = unpck(k);
G_k = tf(ss(a,b,c,d));

T = -G_Pr*G_k/(1-G_Pr*G_k);
figure;
step(T);
big;

figure;
y_d = G_Pr/(1-G_Pr*G_k);
impulse(y_d);
xlim([0,1]);
big;


