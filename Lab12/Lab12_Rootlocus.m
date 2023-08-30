clc;
clear;
n1 = [1 2 0];
tf1 = tf(1,n1);

n2 = [1 5];
tf2 = tf(1 , n2);

T = feedback(tf1,tf2);

rlocus(T);
rlocfind(T)