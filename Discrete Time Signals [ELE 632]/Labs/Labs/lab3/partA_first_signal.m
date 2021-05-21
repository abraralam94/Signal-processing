N_0 = 5; n = (0:N_0-1); Omega_0 = 2*pi/N_0;
%Now we build our signal array of zize N_0
x_n = [zeros(1, N_0)];% We initialize x[n] array
for i = 0 : N_0-1 ,
  x_n(i+1)= 2*sin(3.2*pi*i)+ 4*cos(2.4*pi*i);
end

for r = 0:N_0-1,
  D_r(r+1) = sum(x_n.*exp(-j*r*Omega_0*n))/N_0;
end

r = n; 
subplot(1,2,1);
stem(r,abs(D_r),'k.');
xlabel('r'); ylabel('|D_r|'); axis([-0.1 4.2 -.1 4]);
subplot(1,2,2);
stem(r,angle(D_r),'k.');
xlabel('r'); ylabel('\angle D_r (in radians)'); axis([-0.1 4.2 -3.2 3.2]);
clear all;
% our time domain function plotter below
x = @(n) 2*sin(3.2*pi*n)+ 4*cos(2.4*pi*n);
n = (-30:30)';
figure;
stem(n, x(n), 'k');xlabel('n'); ylabel('x[n]'); axis([-8 8 -7 4.5]);
clear all;