clear; close all;

s=tf('s');
P=ss(10/(s+1));
W=ss(1/(s+5));
systemnames = 'P W';
inputvar = '[w; u]';
outputvar = '[P; P]';
input_to_P = '[W - u ]';
intput_to_W = '[w]';
G = sysic;



