clear all;
clc;
K = [0 : 0.1 : 30];
j = 1;



for i = 1:length(K)
    n1 = 5;d1 = [1 10 0];
    t1 = tf(n1,d1);
    
    n2 = [2 K(i)];d2 = [1 0];
    t2 = tf(n2,d2);
    sys = feedback(t1,t2);
    
    P(:,i) = pole(sys);
    if(real(P(:,i)) < 0)
        k(j) = K(i);
        p(:,j) = P(:,i);
        j = j+1;
    end
end

k_min = min(k)
index = find( k == min(k))
p(:,index);
plot(real(p),imag(p) , 'x'),grid
xlabel('Real Axis'),ylabel('Imaginary axis');