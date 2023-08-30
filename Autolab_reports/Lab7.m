G = tf([3 10 1],[1 8 5]);

[a,b,c,d] = tf2ss([3 10 1],[1 8 5])

clc;
clear all;

a = [ 0 1 0; 0 0 1;-3 -2 -5];
b = [ 0 0 1].';
c = [ 1 0 0];
d = 0;

x0 = [0 -1 1].';
t0 = [ 0:0.01:10];
u = 0*t0;

sys2 = ss(a,b,c,d)


[y,T,x] = lsim(sys2,u, t0,x0);

subplot(4,2,1),plot(T,x(:,1),'co');legend on; legend('x1 Response');xlabel('time');ylabel('Function value');grid on;
subplot(4,2,2),plot(T,x(:,2),'bx');legend on; legend('x2 Response');
subplot(4,2,3),plot(T,x(:,3),'y*');legend on; legend('x3 Response');
subplot(4,2,4),plot(T,y,'ms');legend on; legend('y output Response');

t = 10;
PHI = expm(a*t)

XF1 = expm(a*t)*x0







