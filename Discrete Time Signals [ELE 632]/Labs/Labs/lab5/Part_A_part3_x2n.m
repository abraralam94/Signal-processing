N = 100;%Our number of samples
%Now we define x2[n]
x2 = @(n) cos(2*pi*n*(30.0/100.0)) + 0.5*cos(2*pi*n*(40.0/100.0)) ;

x2n = zeros(1, N);
%lets build our function array
for n=0:N-1,
    x2n(n+1)=x2(n);
end

%For debugging purpose;
%stem(n, x2n);
%Now we calculate our DFT using FFT 
X2 = fft(x2n);
r = (-(N/2):(N/2)-1);
fr = r./N;
stem(fr, abs(fftshift(X2)));
xlabel('Frequency (fr)'); ylabel('|DFT of x_2[n]|'); axis([fr(1) -fr(1), -0.3 50.5]);
clear all;


