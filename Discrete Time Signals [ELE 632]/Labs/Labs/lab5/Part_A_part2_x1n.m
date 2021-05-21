N = 500;%Our number of samples
%Now we define x1[n]
x1 = @(n) exp(j*2*pi*n*(30/100)) + exp(j*2*pi*n*(33/100));
n= (0: N-1);
%Lets build our x1[n] array
x1n = [x1(0) x1(1) x1(2) x1(3) x1(4) x1(5) x1(6) x1(7) x1(8) x1(9)];
%For debugging purpose;
%stem(n, x2n);
%First we must zero pad x1[n]
x1n_zp = [x1n, zeros(1,490)];%padded with 490 zeros
%Now we calculate our DFT using FFT 
X1 = fft(x1n_zp);
r = (-(N/2):(N/2)-1);
fr = r./N;
stem(fr, abs(fftshift(X1)));
xlabel('Frequency (fr)'); ylabel('|DFT of x_1[n]|'); axis([fr(1) -fr(1), -0.3 18.5]);
clear all;


