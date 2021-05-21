
% First we define u[n]
u = @(n) 1.*(n >= 0);
%Now we define x[n]
x = @(n) sin(2*pi*n*(1/10.0)) .* (u(n)-u(n-10));
n= (0: 9);

%lets build our x(n) matrix
x_n = [x(0) x(1) x(2) x(3) x(4) x(5) x(6) x(7) x(8) x(9)];

omega= linspace(-pi,pi,1001);
W_omega = exp(-j).^((0:length(x_n)-1)'*omega);
X = (x_n*W_omega);

subplot(1,2,1);
plot(omega,abs(fftshift(X)),'k');
xlabel('\Omega'); ylabel('|X(\Omega)|'); axis([-pi pi 0 5.5]);
subplot(1,2,2);
plot(omega,angle(fftshift(X)),'k');
xlabel('\Omega'); ylabel('\angleX(\Omega) (in radians)'); 
clear all;
