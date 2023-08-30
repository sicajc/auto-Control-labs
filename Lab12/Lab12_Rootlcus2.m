zeta=((log(0.1)/pi)^2/(1+(log(0.1)/pi)^2))^0.5; % Find Percent Overshoot <= 10%

theta=acosd(zeta);%find the arcos of the angle, specify in degree {d}
plot([-0.4 -0.4],[-30 30],'--',[0 30/tand(180-theta)],[0 30],'--',[0 -30/tand(180+theta)],[0 -30],'--');
%Find the settling time under 10s which is given by formula T=4/ZETA*Wn
%[-30 30] is the array for y axis then plot for x = [-0.4 -0.4] y = [-30 30] it
%will connect the graph
%Then for 6/tand(180-theta), it is to draw the real axis line, then plot
%the y axis array to make it a cone shape line graph to specify the right
%area for the requirement. 45deg here so it would be 180 - 45.
hold on
numg=[1];deng=[1 10 0];sys1=tf(numg,deng);
rlocus(sys1)
[kp,poles]=rlocfind(sys1)

figure
t=0:0.1:15;
sys1_o=kp*sys1; 
%Kp given by rlocfind, then we can find the K value we want from rlocfind(sys1)
%And then we can specify the openloop system we want.
sys1_cl=feedback(sys1_o,[1]); %The system we want to plot is the closed loop feedback system we want
[y1,t]=step(sys1_cl,t);
plot(t,y1),grid
xlabel('Time (sec)'),ylabel('y(t)')