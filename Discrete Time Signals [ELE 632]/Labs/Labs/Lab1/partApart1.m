% First we define u[n]
u = @(n) 1.*(n >= 0);
% Now define delta[n]
delta = @(n) u(n) - u(n - 1);
%Now we define x[n]
x = @(n) cos(pi*n*(1/5.0)) .* u(n);

n = (-30:30)';

figure;
stem(n, delta(n-3), 'k');
title('delta[n-3]');
xlabel('n'); ylabel('delta[n-3]');
axis([-8 8 -0.2 1.3]);

figure;
stem(n, u(n+1));
title('u[n+1]');
xlabel('n'); ylabel('u[n+1]');
axis([-3 5 -0.2 1.3]);

figure;
stem(n, x(n));
title(' x[n] = cos(pi*n*(1/5.0))u[n]');
xlabel('n'); ylabel('x[n] = cos(pi*n*(1/5.0))u[n]');
axis([-3 20 -1.2 1.2]);

figure;
stem(n, x(n-3));
title(' x[n - 3]');
xlabel('n'); ylabel('x[n - 3]');
axis([-3 20 -1.2 1.2]);

figure;
stem(n, x(-n));
title(' x2[n]');
xlabel('n'); ylabel('x2[n]');
axis([-18 5 -1.2 1.2]);

clear all;

