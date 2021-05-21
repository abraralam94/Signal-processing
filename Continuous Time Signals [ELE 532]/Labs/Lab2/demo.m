u = @(t) 1.0*(t>=0);
x = @(t) u(t) - u(t - 2);
plot(