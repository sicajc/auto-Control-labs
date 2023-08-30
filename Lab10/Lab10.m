n1 = [1 1]
d1 = [1 0.6 1]

tf1 = tf(n1,d1)
G = feedback(tf1,1)

step(G,'bx')

stepinfo(G)
ltiview('step',G);