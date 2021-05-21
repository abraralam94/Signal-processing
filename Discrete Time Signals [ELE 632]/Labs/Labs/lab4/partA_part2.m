% First we define u[n]
complex_exp = @(Omega) exp(-j*Omega);
% Now define delta[n]
%delta = @(n) u(n) - u(n - 1);
%Now we define x[n]
%x = @(n) cos(pi*n*(1/5.0)) .* u(n);

Omega = (-pi:0.0001:pi)';
X_Omega = @(Omega) 1 + (6/7)*complex_exp(Omega) + (5/7)*complex_exp(2*Omega) + (4/7)*complex_exp(3*Omega) + (3/7)*complex_exp(4*Omega) + (2/7)*complex_exp(5*Omega) + (1/7)*complex_exp(6*Omega);

subplot(1,2,1);
plot(Omega,abs(X_Omega(Omega)),'k');
xlabel('\Omega'); ylabel('|X(\Omega)|'); axis([-pi pi 0 5.5]);
subplot(1,2,2);
plot(Omega,angle(X_Omega(Omega)),'k');
xlabel('\Omega'); ylabel('\angleX(\Omega) (in radians)'); 
clear all;