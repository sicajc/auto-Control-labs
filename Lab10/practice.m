clc;
clear all;

K = [0:0.1:20];
j=1;

for i = 1:length(K)
    tf1 = tf(1,[1 5 (K(i)-3) K(i)]);
    sys = feedback(tf1,1);
    P(:,i) = pole(sys);
    if( real(P(:,i)) < 0)
        p(:,j) = P(:,i);
        k(j) = K(i);
        j=j+1;
    end
end

kmin = min(k);
index = find( k == kmin);
plot(real(p),imag(p),'x');



    
    
    