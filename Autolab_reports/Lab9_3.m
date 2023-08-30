SYS1 = tf([2 1],[1 0]);
SYS2 = tf((-10),[1 10]);
SYS3 = tf(-[1 5],[1 3.5 6 0]);
SYS123 = SYS1*SYS2*SYS3;
SYS = feedback(SYS123,1);

t = [0 : 0.1 : 15]';

impulse = t==0;

y = lsim(SYS,u,t);
plot(t,y,'bx');legend on; legend('Response of system input with impulse response');xlabel('Time');ylabel('\theta');grid on;title('Response of system input with impulse response');
