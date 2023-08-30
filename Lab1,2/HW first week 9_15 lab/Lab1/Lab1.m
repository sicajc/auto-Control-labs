%1.1

A = [1 2 3;4 5 6;7 8 9] 
B = [9 8 7;6 5 4;3 2 1]

A+B %a)

A*B %b)

A^2 %c)

B' %d)


%2

x = -pi : 0.1 : pi ;

y = cos(x);
z = sin(x);
h = exp(-x);
subplot(2,2,1),plot(x,y,'y*:'),legend('cos_x'),xlabel('x'),ylabel('Return Values'),title('cos(x)');grid on;
subplot(2,2,2),plot(x,z,'og'),legend('sin_x'),xlabel('x'),ylabel('Return Values'),title('sin(x)');grid on;
subplot(2,2,3),plot( x , y , 'y*:', x , z , 'og' ),legend('cos_x' , 'sin_x'),xlabel('x'),ylabel('Return Values'),title('sin(x),cos(x)');grid on;
subplot(2,2,4),plot(x,h,'k+:'),legend('exp_{-x}'),xlabel('x'),ylabel('Return Values'),title('e^{-x}');grid on;


