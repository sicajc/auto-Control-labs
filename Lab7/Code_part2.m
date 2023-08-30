%MP 3.4 
%a)
a = [ 0 1 0 ; 0 0 1; -3 -2 -5] ; b = [0 ; 0 ; 1] ; c = [ 1 0 0] ; d = [ 0 ];

a
b
c
d

%Plot the response with input x(0)
sys = ss(a,b,c,d);
x0 = [ 0 ; -1 ; 1 ] ; 

t = [ 0 : 0.01 : 10 ] ;
u = 0*t; %zero input
[ y ,T , x ] = lsim(sys , u , t , x0);

plot(T,y);

%B)Compute the state transition matrix

dt = 10;
%State transition matrix PHI
PHI = expm(a*dt)
%x(t)
Xf1 = PHI * x0







