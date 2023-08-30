clc;
clear all;
%The function to find the suitable value k for finding the transfer function!
for k = 1 :0.1 : 5 %k is changing for us to find suitable k
    t = 0:0.1:25; %Requires t as x-axis to get the step
    tf1 = tf([2],[1 0])*tf([1],[1 k]);
    sys = feedback(tf1,tf([1],[1 1]));
    [y,t] = step(sys,t);
    S = stepinfo(y,t); %A convenient function which finds everything you need!
    
    if( (S.Overshoot>=1 )&&(S.Overshoot<=10)&&(k>1))
        disp("Value of k is for suitable overshoot range is");
        disp(k)
    end 
end

disp("The plot of last k");
S.Overshoot
S.Peak

plot(t,1-y,[0 5],[1.2 1.2],'--'); grid on
xlabel('Time(sec)');ylabel('e_{ss}(t)');
