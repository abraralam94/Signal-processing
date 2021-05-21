N = 100; PulseWidth = 10;
t = [0:1:(N-1)];
u = @(t) 1.0 .* (t>= 0);
%stairs(t,(u(t) - u(t-10))); grid on; axis([-10,110,-0.1,1.1])
x = u(t) - u(t-10);
Xf = fft(x);
Zf = Xf .* Xf;

f = [-(N/2):1:(N/2)-1]*(1/N);
w=2*pi*f; %Our omega variable (radian freq.)

subplot(211); plot(w,fftshift( abs(Zf))); grid on;title('Abs(Z(w))');
xlabel('w'); 
ylabel('Abs(Z(w))') 
subplot(212); plot(w,fftshift(angle(Zf))); grid on;title('phase of Z(w)');
xlabel('w'); 
ylabel('phase in radian')