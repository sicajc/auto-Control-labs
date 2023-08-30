%1
A = randi(3,3,3) 
B = eye(3)

C=A+B

diag(C,0)
%2
num = input('Please enter a number');
switch floor(num/10)
    
    case 9
        disp('A'); 
    case 10
        disp('A');
    case 8
        disp('B');
    case 7
        disp('C');
    otherwise
        disp('You fail');

end
%3
n = 1;
s = 0;

while n < 1000
    s = s + n;
    n = n + 1;
    
end
disp(s);


