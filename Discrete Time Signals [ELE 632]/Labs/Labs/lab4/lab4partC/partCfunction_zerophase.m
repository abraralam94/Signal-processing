function [] = partCfunction_zerophase(N, title1, title2)

Omega_0 = 2*pi/3; %  cutoff frequency
n=(0:N-1);

Omega = linspace(0,2*pi*(1-1/N),N)';
H_d = @(Omega) (mod(Omega,2*pi)>Omega_0)+(mod(Omega,2*pi)<2*pi-Omega_0);
H = 1.0*H_d(Omega);
h = real(ifft(H));

% plot h[n]
subplot(413);
stem(n,h);
title(title1+" (Zero Phase)");
xlabel("n");
axis([0 N -Inf Inf]);

% plot |H(Omega)|
H_len = 0:2*pi/1001:2*pi;
H_finite = freqz(h,1, H_len);
subplot(414);
plot(H_len,abs(H_finite));
title(title2+" (Zero Phase)");
xlabel("\Omega");
axis([0 2*pi -Inf Inf]);

end