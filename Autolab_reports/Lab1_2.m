a =[0 -2; 1 -4];
b=[2 ; 0];
c=[1 0];
d= [ 0 ];

sys = ss(a,b,c,d)


x0 = [2 2].';
t = [0:0.01:1];
u=0*t;

[y,T,x]= lsim(sys,u,t,x0);


dt = 1;
XF1 = expm(a*dt)*x0
