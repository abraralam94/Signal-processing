% First we define u[n]
u = @(n) 1.*(n >= 0);
% Our y[n]
y = @(n) 5 * exp((-1/8.0)*n) .* (u(n)-u(n-10));
n = (-10:70)';

figure;
stem(n, y(n), 'k');
title('y[n]');
xlabel('n'); ylabel('y[n]');
axis([-10 70 -0.2 7.5]);

figure;
stem(n, y(3*n), 'k');
title('y[3n]');
xlabel('n'); ylabel('y[3n]');
axis([-10 70 -0.2 7.5]);

% This is the case of upsampling
% first, we crate an array
y2_val = zeros([1 81]);
% Now we fill up the array with values
j = 1;
for i = -10 : 70 ,
  if (floor(i/3) == i/3)
     y2_val(1, j) = y((1/3.0)*i);
  else
     y2_val(1, j) = 0;
  end
  j = j+1;
end

n2 = (-10:70);

figure;
stem(n2,y2_val,'k');
title('y[n/3]');
xlabel('n'); ylabel('y[n/3]');
axis([-10 70 -0.2 7.5]); 

clear all;

        


