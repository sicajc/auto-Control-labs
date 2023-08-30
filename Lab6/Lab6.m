%Feedback functions usages
%sys = series(sys1,sys2)  for systems series
%sys = parallel(sys1,sys2) for systems parallel

%sys = feedback(sys1,sys2,sign) sign for negative feedback
%or positive feedback, sign = -1 is negative. Sign = 1 is 
%positive

disp("Example 1");
n1 = [2 5 1] ; n2 = [ 1 2 3];

d1 = [ 1 2 3 ]; d2 = [1 10];
disp("G is");
G = tf(n1,d1)

disp("H is");
H = tf(5*n2,d2)


F1 = feedback(G,H)

F2 = feedback(G,H,-1)

F3 = feedback(G,H,1)

%More at feedback

disp("G is");
G = tf(n1 , n2)

f1 = feedback(G,1)

f2 = feedback(1,G)














