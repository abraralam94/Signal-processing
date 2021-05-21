% part B part 1: inverse DTFS and time shifting property

%X[r] for one period
N_0 = 32;
X = zeros(1,N_0);
X(1:5) = 1;
X(29:32) = 1;

%plot to verify that X(r) looks the same as figure 2
%{ 
r = -36:36;
stem(r, [X(29:32) X X X(1:5)]);
xticks([-36 -32 -28 -16 -4 0 4 16 28 32 36]);
%}

%compute x[n]
x = real(ifft(X)*N_0);
x_plot = [x(29:32) x x x(1:5)];
n = -36:36;

%plot x[n]
clf;
stem(n, real(x_plot)); xlabel('n'); ylabel('x[n]'); title("B1: x[n]");
xticks([-36 -32 -28 -16 -4 0 4 16 28 32 36]);
clear all;