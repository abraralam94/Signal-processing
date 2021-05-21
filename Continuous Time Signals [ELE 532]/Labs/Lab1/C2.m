t = (0 : 0.01 : 4);
%unit step signal
u = @(t) 1.0 .* (t >= 0);
%p = @(t) u(t) - u(t-1);
%plot(t, p(t));
%Our exp. periodic original signal below
f = @(t) exp(-2*t).* cos(4*pi*t);
% below is our final causal signal
g = @(t) f(t) .* u(t);
% Our shifted version
s = @(t) g(t+1);
plot(t, s(t));
xlabel('t'); ylabel('s(t) = g(t+1)'); grid;
clear all;
