A1;

%Plot impulse response of system in problem A.1

t = [0:0.0005:0.1];

%Make system
%sys = ss(lambda, p, t);
[y1,x1,t1] = impulse(lambda,p,t);
plot(t1,y1); xlabel('t'); ylabel('y1');

