N = 500;%Our number of samples
%Now we define x1[n]
%x1 = @(n) exp(j*2*pi*n*(30/100)) + exp(j*2*pi*n*(33/100));
%Now we define x2[n]
x2 = @(n) cos(2*pi*n*(30.0/100.0)) + 0.5*cos(2*pi*n*(40.0/100.0)) ;
n= (0: N-1);
%Lets build our x2[n] array
x2n = [x2(0) x2(1) x2(2) x2(3) x2(4) x2(5) x2(6) x2(7) x2(8) x2(9)];
%For debugging purpose;
%stem(n, x2n);
%First we must zero pad x1[n]
x2n_zp = [x2n, zeros(1,490)];%padded with 490 zeros
%Now we calculate our DFT using FFT 
X2 = fft(x2n_zp);
r = (-(N/2):(N/2)-1);
fr = r./N;
stem(fr, abs(fftshift(X2)));
xlabel('Frequency (fr)'); ylabel('|DFT of x_2[n]|'); axis([fr(1) -fr(1), -0.3 6.5]);
clear all;


