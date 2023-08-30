clc;
clear;
tf1 = tf( 1,[1 0.5]);
tf2 = tf( 1 , [1 0]);
tf3 = tf1*tf2;
sys = feedback(tf3 , 1);

bode(sys);
ltiview('bode',sys);

w = logspace(-1 ,1 , 400);
[mag,phase,w]=bode(sys,w);