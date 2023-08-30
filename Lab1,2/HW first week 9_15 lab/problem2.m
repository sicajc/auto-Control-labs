% if input A = [1 2 3]
% ouput vect = [1 1 2 2 3 3] double the elements of a row vector


clear
clc
A = [1 2 3];

n = length(A);
vect = zeros(1,2*n)
k=1;

for i = 1:n
    for j = 1:2
      vect(k) = A(i);
      k=k+1;
    end
    
end

disp(vect);
