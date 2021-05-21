n = (0:10);
delta = @(n) 1.0.*(n==0);% our unit impulse 
a = [1 1/6 -1/6];
b = [1/3 0 0];
h = filter(b,a,delta(n));
clf; stem(n,h,'k'); xlabel('n'); ylabel('h[n]');
title('part A, # 1, i) Unit impulse response h[n]');
xlabel('n'); ylabel('h[n]');
axis([-0.2 8 -0.1 0.4]);
clear all;