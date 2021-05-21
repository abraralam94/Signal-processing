N = 100; PulseWidth = 10;
t = [0:1:(N-1)];
u = @(t) 1.0 .* (t>= 0);
%stairs(t,(u(t) - u(t-10))); grid on; axis([-10,110,-0.1,1.1])
x = u(t) - u(t-10);
Xf = fft(x);
f = [-(N/2):1:(N/2)-1]*(1/N);
subplot(411); stairs(t,x); grid on; axis([-10,110,-0.1,1.1])
subplot(412); plot(f,fftshift( abs(Xf))); grid on;
subplot(413); plot(f,fftshift(angle(Xf))); grid on;
