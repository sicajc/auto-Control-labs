zeta=((log(0.1)/pi)^2/(1+(log(0.1)/pi)^2))^0.5;
theta = acosd(zeta);
plot([-0.4 -0.4] ,[-30 30],'--',[0 30/tand(180-theta)],[0 30],'--',[0 30/tand(180-theta)],[0 -30],'--');

hold on
sys = tf( 1 ,[1 10 0]);
rlocus(sys)
[kp,poles] = rlocfind(sys);

figure
t = 0:0.1:15;
sys1 = kp*sys;

sysnew = feedback(sys1,1);
[y,t] = step(sysnew,t);
plot(t,y),grid on;