%Transfer function G
n1 = [6 0 1];
d1 = [1 3 3 1];
G = tf(n1 , d1)

%Transfer function H
n2 = [1 1]; n3 = [1 2];
d2 = [1 2*i]; d3 = [1 -2*i]; d4 = [1 3];
num = conv(n2 , n3);
dem = conv(d2 , conv(d3,d4));
H = tf(num,dem)

%a)
disp('Poles and zeroes for G');
pole(G)
zero(G)


disp('Poles and zeroes for H');
pole(H)
zero(H)
%b)
T = tf(G/H)
pzmap(T)





