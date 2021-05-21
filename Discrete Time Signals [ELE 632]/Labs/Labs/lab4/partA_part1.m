N_0 = 128; 
x_n = [zeros(1, N_0)];
x_n(1,1) = 1; x_n(1,2) = 6/7; x_n(1,3) = 5/7; x_n(1,4) = 4/7; x_n(1,5) = 3/7;
x_n(1,6) = 2/7; x_n(1,7) = 1/7;
X = fft(x_n); Omega_0 = 2*pi/N_0; r = -(N_0/2):(N_0/2)-1;
X_r = fftshift(X);
figure;
%plot(Omega_0*r,abs(X_r),'k'); axis([-pi pi 0 9.5]);

subplot(1,2,1);
plot(Omega_0*r,abs(X_r),'k');
xlabel('\Omega'); ylabel('|X(\Omega)|'); axis([-pi pi 0 5.5]);
subplot(1,2,2);
plot(Omega_0*r,angle(X_r),'k');
xlabel('\Omega'); ylabel('\angleX(\Omega) (in radians)'); 
clear all;
