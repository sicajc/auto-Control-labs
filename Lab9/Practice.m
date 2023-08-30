n1 = [1 7];
d1 = [1 10 0 0];
tf1 = tf(n1,d1)

sys = feedback(tf1,1);
t = [0:0.01:25];
u = t;
[y,T] = lsim(sys,u,t);

plot(T,y,'og',t,u,'--');
xlabel('Time'); ylabel('\theta');title('Response of ramp unit');grid on ;
text(2,2,'\leftarrow input','Fontsize',16);
