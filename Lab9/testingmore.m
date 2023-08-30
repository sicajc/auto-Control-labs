clc;
clear all;
n1 = [1 7];
d1 = [1 10 0 0];
tf1 = tf(n1,d1)

sys = feedback(tf1,1); 
t = [0:0.1:15]';

u = t == 0; %Use this to generate a impulse signal at index 0

y=lsim(sys,u,t);
plot(t,y,'bx');