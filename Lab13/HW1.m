clc;
clear;
%a)Obtain bode plot
n1 = 1;
d1 = [1 0.5];
tf1 = tf( n1,d1);

n2 = 1;
d2 = [1 0];
tf2 = tf(n2,d2);
sys1 = tf1*tf2;
K = 1;

sys=feedback(sys1,K);
bode(sys)
%b)Determine frequency resonant

w=logspace(-1,1,200); %200 points
[mag,phase,w]=bode(sys,w);
[mp,l]=max(mag); wr=w(l); %Show the difference in this mp and DB mp,due to the fact one taken in 20log|M|
%l is index retrieve from l
zeta=sqrt(0.5*(1-sqrt(1-1/mp^2)))
wn=wr/sqrt(1-2*zeta^2)
ts=4/(zeta*wn)
po=100*exp(-zeta*pi/sqrt(1-zeta^2))

%c) LTIVIEW
ltiview('bode',sys)

