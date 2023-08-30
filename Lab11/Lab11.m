clear all;
clc;

K = [0 : 0.1 : 20]; %Trace out different K
j = 1;

for i = 1:length(K) %i index for different range of K
    num = 1; den = [1 5 (K(i)-3) K(i)];
    sys = feedback(tf(num,den),1); %system
    
    P(:,i) = pole(sys);  %3*1 array which stores the pole, this system has 3 poles, thus 3*1
    if(real(P(:,i)) < 0) %Trace the pole at the LHP
        k(j) = K(i); %We only need to specify poles at LHP,thus use a different index j.
        p(:,j) = P(:,i);
        j = j+1;    
    end
end

k_min = min(k) %Get the min of index(k)
index = find( k == min(k))
p(:,index) %the min of that certain index in the 3*1 array,which is the pole
plot(real(p),imag(p) , 'x'),grid
xlabel('Real Axis'),ylabel('Imaginary axis');
