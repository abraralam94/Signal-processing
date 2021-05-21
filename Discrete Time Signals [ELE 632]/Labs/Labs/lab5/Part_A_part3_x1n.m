N = 100;%Our number of samples
%Now we define x1[n]
x1 = @(n) exp(j*2*pi*n*(30/100)) + exp(j*2*pi*n*(33/100));

x1n = zeros(1, N);
%lets build our function array
for n=0:N-1,
    x1n(n+1)=x1(n);
end

%For debugging purpose;
%stem(n, x2n);
%Now we calculate our DFT using FFT 
X1 = fft(x1n);
r = (-(N/2):(N/2)-1);
fr = r./N;
stem(fr, abs(fftshift(X1)));
xlabel('Frequency (fr)'); ylabel('|DFT of x_1[n]|'); axis([fr(1) -fr(1), -0.3 102.5]);
clear all;


