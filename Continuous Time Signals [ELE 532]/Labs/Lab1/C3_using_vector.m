alpha = (1 : 2 : 7);
%lets create a column vector as t
t = (0 : 0.01 : 4)';
T = t * ones(1, 4);
% defining the u(t)
u = @(T)1.0 .* (T >= 0);

%k_demo = T * diag(alpha).*u(T-1);
%dummy_2 = diag(alpha);
%plot (t, k_demo);
H = exp(-2)*exp(-T * diag(alpha)).* cos(4*pi*T).*u(T);
plot(t, H);
xlabel('t'); ylabel('exp(-2)exp(-at)cos(4*pi*t)u(t)');grid;
clear all;