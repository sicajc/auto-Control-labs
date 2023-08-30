%a)
tf1 = tf(1,[1 1])
tf2 = tf(1,[1 2])

sys1 = parallel(tf1,tf2);

tf3 = tf(2,[3 1])

sys2 = sys1 * tf3;

tf4 = tf(5,[4 3])
tf5 = tf(1,[1 1])
sys3 = parallel(tf4,tf5);

ftf = feedback(sys2 , sys3)
%b)
step(ftf,'bx');



