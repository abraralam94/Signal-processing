% part C
N_0 = 32;

%C1
Omega_0 = 2*pi/N_0;
H = zeros(1,33);
H(13:21) = 1;

figure();
subplot(311);
omega = -pi:Omega_0:pi;
stem(omega, H);
xlabel("\omega"); ylabel("H[\omega]");
xticks([-pi -3*pi/4 -pi/4 0 pi/4 3*pi/4 pi]);
xticklabels({'-\pi', '-3\pi/4', '-\pi/4', '0' '\pi/4', '3\pi/4', '\pi'});
title("C1");

%C2
n = 0:N_0-1;
n_plot = -32:32;
H_conv = zeros(1, 32);
H_conv(1:4) = 1;
H_conv(28:32) = 1;
x1 = 4*cos(pi*n/8);
X1 = real(fft(x1)/N_0);
Y1 = X1.*H_conv;
y1 = real(ifft(Y1)*N_0);

subplot(312);
stem(n_plot,[y1 y1 y1(1)]);
xticks([-32 -16 -12 -4 0 4 12 16 32]);
xlabel("n"); ylabel("y_1[n]");
title("C2");

%C3
x2 = 4*cos(pi*n/2);
X2 = real(fft(x2)/N_0);
Y2 = X2.*H_conv;
y2 = real(ifft(Y2)*N_0);

subplot(313);
stem(n_plot,[y2 y2 y2(1)]);
xlabel("n"); ylabel("y_2[n]");
xticks([-32 -16 -12 -4 0 4 12 16 32]);
title("C3");
xaxis([-32 32]);