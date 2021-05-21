alpha = (1 : 2 : 7);
%lets create a column vector as t
t = (0 : 0.01 : 4)';
T = t * ones(1, 4);
% defining the u(t)
u = @(T)1.0 .* (T >= 0);
H = exp(-2)*exp(-T * diag(alpha)).* cos(4*pi*T).*u(T);
dimension = size(H)