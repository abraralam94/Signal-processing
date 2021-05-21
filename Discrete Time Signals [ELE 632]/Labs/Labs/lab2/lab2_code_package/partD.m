%Part D: Total Response

n = (0:30)'; %plotting 30 datapoints

%z_i and y_zero_input from part B
a = [1 -3/10 -1/10];
b = [2 0 0];
z_i = filtic(b,a,[1 2]);
y_zero_input = filter(b,a,zeros(size(n)),z_i);

%x[n] and y_zero_state from part C
u = @(n) 1.*(n >= 0);
x = @(n) 2*cos((2*pi*n)/6).*(u(n)-u(n-10));
y_zero_state = filter(b,a,x(n));

%D.1 total response
y_total = filter(b,a,x(n),z_i);

%D.2 sum of zero input and zero state
y_sum = y_zero_input + y_zero_state;

%plot
clf;
subplot(2,1,1);
stem(n,y_total); xlabel('n'); ylabel('y_{total response}[n]');
axis([-0.5 20 -4.3 5]);
title('Part D (1), Total response, y_{total response}[n]');
subplot(2,1,2);
stem(n,y_sum); xlabel('n'); ylabel('y_{sum}[n]');
axis([-0.5 20 -4.3 5]);
title('Part D (2), Sum of zero-input response and zero-state response');
clear all;