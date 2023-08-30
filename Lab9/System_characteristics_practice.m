clc;
clear all;
t = [0:0.1:20]; num = [1];
z = 0.4 ; den = [1 2*z 1]; sys = tf(num,den);

finalval = polyval(num,0) / polyval(den,0) %What is this for?

%Compute step function
[y,T] = step(sys,t); %T is time, y is the output system,remember everything is an array in matlab!
S = stepinfo(y,t)
[ymax , k] = max(y) %Take the largest value of system output and its sample array index
peaktime = t(k) %thus peaktime is the k index of t array

overshoot = 100*(ymax - finalval)/finalval %Definition of percent overshoot
n=1; 

while y(n)<0.1*finalval  %The time to reach 10% of system, n is index of array t
n = n+1;        
end

m=1; 
while y(m)<0.9*finalval %The time to reach 90% of system, m is index of array t
m = m+1;
end

risetime = t(m) - t(n) %Specifiy the value of t with index

l = length(t); %length of the array t

%Definition of settling time
while(y(1)>0.98*finalval & (y(1) < 1.02 * finalval))
    l = l-1;
end

settling_time = t(l); %Specify the Settling time where l is used for indicating the index of array t
plot(T,y)
xlabel('Time(sec)'),ylabel('y(t)'),grid


