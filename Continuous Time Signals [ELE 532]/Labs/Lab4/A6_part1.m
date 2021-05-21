N = 100; PulseWidth = 10;
t = [0:1:(N-1)];
u = @(t) 1.0 .* (t>= 0);
x = u(t) - u(t-10);
e = exp(1i*(pi/3)*t);
w_plus = x.* e;% Our W+ in time domain
W_PLUS_F = fft(w_plus); % our W+ in freq. domain

f = [-(N/2):1:(N/2)-1]*(1/N);
w=2*pi*f; %Our omega variable (radian freq.)

subplot(211); plot(w,fftshift( abs(W_PLUS_F))); grid on;title('Abs(W+ (w)) with pulse width = 10');
xlabel('w'); 
ylabel('Abs(W+(w))') 
subplot(212); plot(w,fftshift(angle(W_PLUS_F))); grid on;title('phase of W+(w) with pulse width = 10');
xlabel('w'); 
ylabel('phase in radian');
clear all;