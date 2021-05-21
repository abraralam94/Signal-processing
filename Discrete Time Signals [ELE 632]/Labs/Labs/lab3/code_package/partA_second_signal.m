N_0 = 6; n = (0:N_0-1); Omega_0 = 2*pi/N_0;
%Now we build our signal array of zize N_0
y_n = [zeros(1, N_0)];% We initialize x[n] array

%Lets's build our x[n] signal 
y_n = [3 2 1 0 1 2];
% we just finished building our x[n] array (over a period)

for r = 0:N_0-1,
  D_r(r+1) = sum(y_n.*exp(-j*r*Omega_0*n))/N_0;
end

r = n; 
subplot(1,2,1);
stem(r,abs(D_r),'k.');
xlabel('r'); ylabel('|D_r|'); axis([-0.1 5.2 -3.2 3.2]);
subplot(1,2,2);
stem(r,angle(D_r),'k.');
xlabel('r'); ylabel('\angle D_r (in radians)'); axis([-0.1 4.2 -3.2 3.2]);
%clear all;
% our time domain function plotter below
y_n_wide = [y_n, y_n, y_n, y_n, y_n, y_n];
n2 = (-18:17)';
figure;
stem(n2, y_n_wide, 'k');xlabel('n'); ylabel('y[n]'); axis([-15 15 -0.1 3.5]);
clear all;