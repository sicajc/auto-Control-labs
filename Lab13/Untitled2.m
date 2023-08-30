
x1 = [1 0 0];
figure;
stem(x1);
%org_x1 = 1;
h1 = [2 1 0 0];
stem(h1);
%org_h1 = 2;
y1 = conv(x1,h1);

figure;
subplot(4,1,1);
stem(y1);

x2 = [2 -1 0 0];
h2 = [-1 2 1 0];
y2 = conv(x2,h2);

subplot(4,1,2);
stem(y2);

x3 = ones(1,5);
h3 = [zeros(1,2) ones(1,6) zeros(1,3) ones(1,6)];
y3 = conv(x3,h3);
n3 = 0:1:length(y3)-1;
subplot(4,1,3);
stem(n3,y3); 
xlabel("Time index n");ylabel('Amplitude');

x4 = [1 2 1 1];
h4 = [1 -1 0 0 1 1];
y4 = conv(x4,h4);
subplot(4,1,4);
n4 = 0:1:length(y4) - 1;
stem(n4,y4);




