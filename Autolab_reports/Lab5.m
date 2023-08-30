%1
n1 = [6 0 1];
d1 = [ 1 3 3 1] ;

n2 = [1 1]; n3 = [1 2];
d2 = [1 2i]; d3 = [1 -2i] ; d4 = [ 1 3 ];

%a)

G = tf(n1 , d1)
n4 = conv(n2,n3);
d5 = conv(d2 , conv(d3,d4));
H = tf(n4,d5)

pole(H)
zero(H)

pole(G)
zero(G)

%b)

Z = tf(G/H)
pzmap(Z);

%2

d = [2 3]
k1 = 10;
G1 = tf(k1,d);

k2 = 30;
G2 = tf(k2,d);

k3 = 60;
G3 = tf(k3,d);
impulse(G1,'kx',G2,'co',G3,'b*');legend on;legend("G1","G2","G3");


