N = 10;%Our number of samples
%Now we define x2[n]
x2 = @(n) cos(2*pi*n*(30.0/100.0)) + 0.5*cos(2*pi*n*(40.0/100.0)) ;
n= (0: 9);%Since our N = 10 (initial sample size = 10)
%Lets build our x2[n] array
x2n = [x2(0) x2(1) x2(2) x2(3) x2(4) x2(5) x2(6) x2(7) x2(8) x2(9)];
%For debugging purpose;
%stem(n, x2n);
%Now we calculate our DFT using FFT 
X2 = fft(x2n);
r = (-(N/2):(N/2)-1);
fr = r./N;
stem(fr, abs(fftshift(X2)));
xlabel('Frequency (fr)'); ylabel('|DFT of x_2[n]|'); axis([fr(1) -fr(1), -0.3 5.5]);
clear all;


