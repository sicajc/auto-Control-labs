w1 = 2 ;z1 = 0;
w2 = 2 ;z2 = 0.1;
w3 = 1 ;z3 = 0;
w4 = 1 ;z4 = 0.2;

t1 = [0 : 0.1 : 15];

sys1 = tf(w1^2,[1 2*z1*w1 , w1^2]);
sys2 = tf(w2^2,[1 2*z2*w2 , w2^2]);
sys3 = tf(w3^2,[1 2*z3*w3 , w3^2]);
sys4 = tf(w4^2,[1 2*z4*w4 , w4^2]);

[y1,T1] = impulse(sys1,t1);
[y2,T2] = impulse(sys2,t1);
[y3,T3] = impulse(sys3,t1);
[y4,T4] = impulse(sys4,t1);

subplot(4,2,1),plot(T1,y1,'co');legend on; legend('sys1 Response');xlabel('time');ylabel('Function value');grid on;title('SYS1');
subplot(4,2,2),plot(T2,y2,'bx');legend on; legend('sys2 Response');xlabel('time');ylabel('Function value');grid on;title('SYS2');
subplot(4,2,3),plot(T3,y3,'y*');legend on; legend('sys3 Response');xlabel('time');ylabel('Function value');grid on;title('SYS3');
subplot(4,2,4),plot(T4,y4,'ms');legend on; legend('sys4 Response');xlabel('time');ylabel('Function value');grid on;title('SYS4');

