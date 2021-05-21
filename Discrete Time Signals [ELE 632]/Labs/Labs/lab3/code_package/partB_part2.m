% part B part 1: inverse DTFS and time shifting property

%X(r) for one period
N_0 = 32;
Omega_0 = (2*pi)/N_0;
X = zeros(1,N_0);
X(1:5) = 1;
X(29:32) = 1;

%plot to verify that X(r) looks the same as figure 2
figure;
r = 0:N_0-1;
 stem(r, X);
% xticks([-36 -32 -28 -16 -4 0 4 16 28 32 36]);
%Now we multi[ly X by thye specified complex number
X_2 = zeros(1,N_0);
for r = 1:N_0,
  X_2(r) = X(r)*exp(-5*Omega_0*(r-1)*i)
end

%compute x[n]
x = real(ifft(X_2)*N_0);
x_plot = [x(29:32) x x x(1:5)];
n = -36:36;

%plot x[n]
%clf;
figure;
stem(n, x_plot); xlabel('n'); ylabel('x[n]'); title("B2: x[n]");
xticks([-36 -32 -28 -16 -4 0 4 16 28 32 36]);
clear all;