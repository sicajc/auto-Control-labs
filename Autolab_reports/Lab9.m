ng = [1 7]; dg1 = [ 1 0 0 ]; dg2 = [ 1 10 ]; dn1 = conv(dg1,dg2);



sys_g = feedback(tf(ng , dn1),1);

t1 = [0:0.1:25];
u = t1;
[y,T]=lsim(sys_g,u,t1);

plot(T,T,'bx',T,,'co');legend on; legend('Response of ramp input');xlabel('Time');ylabel('\theta');grid on;title('Response of ramp input');
text(2,2,'\leftarrow input','Fontsize',16);
text(10.3,9,'\leftarrow output','Fontsize',16);