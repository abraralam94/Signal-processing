%First we define the system.
a = [1 -3/10 -1/10];%%Differenee coeff. of the y[n]
b = [2 0 0];%%Differenee coeff. of the x[n]
n = (0:30)'; %Since we are plotting 30 data points

u = @(n) 1.*(n >= 0);%First we  define u[n]
x = @(n) 2*cos((2*pi*n)/6).*(u(n)-u(n-10)); %Our input x[n]
y = filter(b,a,x(n)); %Our system's zero-state response.

stem(n,y,'k'); xlabel('n'); ylabel('y_{zero-state} [n]');
axis([-0.5 20 -4.3 4.3]);
title('Part C, Zero state response, y_{zero-state} [n]');
clear all;