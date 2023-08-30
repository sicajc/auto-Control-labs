%Functions(1/2)
p = conv([1 1],conv([1 1],[1 1])) %The polynomial after convolution
r=roots(p) %ROOTS for poly p
q=[1 3 3 1] %Transfer poly function q , 1 3 3 1
roots(q) %roots of p
poly(r) %repair transfer function of r
polyval(p,-5);


%Compelx Transfer function

n1 = [1 1]; n2 = [1 2];
d1 = [ 1 2*i]; d2 = [ 1 -2*i]; d3 = [1 3];
num = conv(n1,n2);
den = conv(d1,conv(d2,d3));
H = tf(num,den)

%Transfer function drawing.
k = 1;
G1 = tf(10*k,[1 5])
k = 2;
G2 = tf(10*k,[1 5])
k = 5;
G3 = tf(10*k,[1,5])
step(G1,'-',G2,'*',G3,'o')




