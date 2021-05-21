t = (-2.0 : 0.01 : 6);
%unit step signal
u = @(t) 1.0 .* (t >= 0);
%p = @(t) u(t) - u(t-1);
%plot(t, p(t));
%Our exp. periodic original signal below
f = @(t) exp(-2*t).* cos(4*pi*t);
% below is our final causal signal
g = @(t) f(t) .* u(t);
plot(t, g(t));
axis ([-0.8, 2, -0.8 1.1]);
xlabel('t'); ylabel('g(t) = exp(-2*t)* cos(4*pi*t)* u(t)'); grid;
clear all
