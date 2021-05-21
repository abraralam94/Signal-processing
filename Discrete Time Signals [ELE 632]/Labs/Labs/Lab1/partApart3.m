% First we define u(t)
u = @(t) 1.*(t >= 0);
% Our y(t)
z = @(t) 5 * exp((-1/8.0)*t) .* (u(t)-u(t-10));
y3 = @(t) z(t/3);
t = (-10:0.1:70);

figure;
plot(t, y3(t), 'k');
title('Y3(t)');
xlabel('t');ylabel('y3(t)');
axis([-10 70 -0.2 7.5]);

figure;
n = (-10:70);
stem(n, y3(n), 'k');
title('Y3[n]');
xlabel('n');ylabel('y3[n]');
axis([-10 70 -0.2 7.5]);

clear all;

