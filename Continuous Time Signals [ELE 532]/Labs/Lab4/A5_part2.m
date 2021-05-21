N = 100; PulseWidth = 5;
t = [0:1:(N-1)];
u = @(t) 1.0 .* (t>= 0);
x = u(t) - u(t-5);
Xf = fft(x);
f = [-(N/2):1:(N/2)-1]*(1/N);
w=2*pi*f; %Our omega variable (radian freq.)

subplot(211); plot(w,fftshift( abs(Xf))); grid on;title('Abs(X(w)) with pulse width = 5');
xlabel('w'); 
ylabel('Abs(X(w))') 
subplot(212); plot(w,fftshift(angle(Xf))); grid on;title('phase of X(w) with pulse width = 5');
xlabel('w'); 
ylabel('phase in radian')