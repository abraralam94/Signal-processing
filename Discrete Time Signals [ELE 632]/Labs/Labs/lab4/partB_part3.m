% First we define u[n]
u = @(n) 1.*(n >= 0);
%Now we define x[n]
x = @(n) sin(2*pi*n*(1/10.0)) .* (u(n)-u(n-10));
n= (0: 9);

%lets build our x(n) matrix
x_n = [x(0) x(1) x(2) x(3) x(4) x(5) x(6) x(7) x(8) x(9)];
% lets build h[n] matrix
h_n = [1 1 1 1 1 1 1 1 1 1];

omega= linspace(-pi,pi,1001);
W_omega = exp(-j).^((0:length(x_n)-1)'*omega);
X = (x_n*W_omega);
H = (h_n*W_omega);

CN = X .*H;

subplot(1,2,1);
plot(omega,abs(fftshift(CN)),'k');
xlabel('\Omega'); ylabel('|X(\Omega)H(\Omega)|'); axis([-pi pi 0 27.3]);
subplot(1,2,2);
plot(omega,angle(fftshift(CN)),'k');
xlabel('\Omega'); ylabel('\angleX(\Omega)H(\Omega) (in radians)'); 
clear all;

