clc;
clear;

p=[0:0.01:2];
n=length(p);


for i=1:n
num = 7; den=[1 p(i) 0];
tf1 = tf(num,den);
sys=feedback(tf1,1);
a(1,i)=bandwidth(sys);


end



plot(p,a)
