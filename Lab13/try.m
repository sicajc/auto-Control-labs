%a)Obtain bode plot
n1 = 1;
d1 = [0.25 1];
tf1 = tf( n1,d1);

n2 = 1;
d2 = [3 1];
tf2 = tf(n2,d2);
sys1 = tf1*tf2;


sys=feedback(sys1);
bode(sys)