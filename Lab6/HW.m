%a)

sys1 = tf(1,[2 1]);
sys2 = tf(1,[1 2]);

sys3 = tf(2,[3 1]);

sys4 = tf(5,[4 3]);
sys5 = tf(1,[1 1]);

%Add sys1 and 2 together
sys_add1 = parallel(sys1,sys2)

%Times with sys3
sys_conv = tf(sys_add1 * sys3)

%Add sys4 and 5 together
sys_add2 = parallel(sys4,sys5)

%Whole output
disp("The whole transfer function is");
F1 = feedback(sys_conv,sys_add2)

%Input step response and output a graph

step(F1,'*')






















