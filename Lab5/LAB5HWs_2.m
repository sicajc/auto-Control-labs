k = 10;
G1 = tf(k , [2 3]);

k = 30;
G2 = tf(k , [2 3]);

k = 60;
G3 = tf(k , [2 3]);

step(G1,'xg',G2,'ob',G3,'*c');
