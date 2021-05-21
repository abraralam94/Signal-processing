N = 100; PulseWidth = 10;
t = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
%stairs(t,x); grid on; axis([-10,110,-0.1,1.1])
subplot(211); stairs(t,x); grid on; axis([-10,110,-0.1,1.1])
subplot(212); plot(t,x); grid on; axis([-10,110,-0.1,1.1])