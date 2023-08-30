%1
%A)
A = randi(6,3)
%B)
B = eye(3)
%C) A+B

C=A+B

%D)
diag(C)

%2
grade = input('Enter a grade Value');

switch floor(grade/10)
    case 9,
        disp("A");
    case 8,
        disp("B");
    case 7,
        disp("C");
    otherwise,
        disp("fall");
end

%3
sum = 0;
i = 0;

while i<1000
    sum = sum+ i;
    i = i + 1;
end

disp(sum);
    


            
