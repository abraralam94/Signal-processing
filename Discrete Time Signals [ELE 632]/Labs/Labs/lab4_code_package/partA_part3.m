N_0 = 128; 
x_n = [zeros(1, N_0)];
x_n(1,1) = 1; x_n(1,2) = 6/7; x_n(1,3) = 5/7; x_n(1,4) = 4/7; x_n(1,5) = 3/7;
x_n(1,6) = 2/7; x_n(1,7) = 1/7;
X = fft(x_n); Omega_0 = 2*pi/N_0; r = -(N_0/2):(N_0/2)-1;

x_synthesized = real(ifft(X));
n = (0:127);
stem(n, x_synthesized);
title('Synthesized x[n]');
xlabel('n'); ylabel('x[n]');
axis([-0.1 12 -0.2 1.3]);
clear all;
