%part E: Convolution and System Stability

n = (0:30)'; %plotting 30 datapoints
delta = @(n) 1.0.*(n==0); %unit impulse

%impulse response h[n] from part B
a = [1 -3/10 -1/10];
b = [2 0 0];

%x[n] from part C
u = @(n) 1.*(n >= 0);
x = @(n) 2*cos((2*pi*n)/6).*(u(n)-u(n-10));

%part E: h and y
h = filter(b,a,delta(n));
y = conv(x(n), h);

%part E plot
clf;
stem(n,y(1:size(n))); xlabel('n'); ylabel('y_{zero state}[n]');
axis([-1 20 -5 5]);
title('Part E, Zero-state response using convolution, y_{zero state}[n]');
clear all;