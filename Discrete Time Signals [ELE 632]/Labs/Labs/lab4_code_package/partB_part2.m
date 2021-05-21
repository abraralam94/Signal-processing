n= (0: 9);
h_n = [1 1 1 1 1 1 1 1 1 1];

omega= linspace(-pi,pi,1001);
W_omega = exp(-j).^((0:length(h_n)-1)'*omega);
H = (h_n*W_omega);

subplot(1,2,1);
plot(omega,abs(fftshift(H)),'k');
xlabel('\Omega'); ylabel('|H(\Omega)|'); axis([-pi pi 0 11.3]);
subplot(1,2,2);
plot(omega,angle(fftshift(H)),'k');
xlabel('\Omega'); ylabel('\angleH(\Omega) (in radians)'); 
clear all;
