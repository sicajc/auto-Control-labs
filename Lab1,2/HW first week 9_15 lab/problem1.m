clear
clc
n = input('Enter the value of n:\n') ; 
k = 1;

for i = 1:n
    for j = 1:i
        vect(k) = i; 
        k = k+1;
    end
end
disp(vect);
   %if n = 3
   %output -> [1 2 2 3 3 3]