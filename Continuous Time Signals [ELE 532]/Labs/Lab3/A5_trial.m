A = 1.0;
D = @(n) -A*4j*sin(n*pi/2)./(n.^2*pi^2);
T0 = 2; omega0 = 2*pi/T0; t = (-T0:.001:T0);
D0 = 0; 
x10 = D0*ones(size(t));
for n = 1:1000,
    x10 = x10+real(D(n)*exp(1j*omega0*n*t)+D(-n)*exp(-1j*omega0*n*t));
end
plot(t,x10,'k'); xlabel('t'); ylabel('x_{10}(t)');
clear all;