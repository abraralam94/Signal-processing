n = (0:10);
delta = @(n) 1.0.*(n==0);% our unit impulse 
a = [1 0 1/4];
b = [1 0 0];
h = filter(b,a,delta(n));
clf; stem(n,h,'k'); xlabel('n'); ylabel('h[n]');
title('part A, # 1, ii) Unit impulse response h[n]');
xlabel('n'); ylabel('h[n]');
axis([-0.2 8 -0.3 1.2]);
clear all;