clc;
clear all;
    sys_cl = feedback(tf([5],[1,2,25]),tf([1 2],[1 25]));
    t = 0:0.1:10;
    [y,t] = step(sys_cl,t);
    
   

plot(t,1.2-y); grid on %Since system steady state error is system output - system input!
xlabel('Time(sec)');ylabel('e_{ss}(t)');


    
    