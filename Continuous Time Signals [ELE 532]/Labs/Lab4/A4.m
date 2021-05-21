N = 100; PulseWidth = 10;
t = [-1:1:(N-1)]; %some adjustments were made3 here to display z(t) properly
u = @(t) 1.0 .* (t>= 0);
%stairs(t,(u(t) - u(t-10))); grid on; axis([-10,110,-0.1,1.1])
x = u(t) - u(t-10);
Xf = fft(x);
Zf = Xf .* Xf;

convf = ifft(Zf);
plot(t,convf); grid on; axis([-15,110,-3,15.1]);
xlabel('t'); 
ylabel('z(t) = x(t) * x(t)')
