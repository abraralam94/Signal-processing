 t = (-2.02 : 0.001 : 5.02);
 u = @(t) 1.0 .* (t>= 0);
 g = @(t) (t-1).^2;
 f = @(t) g(t).*(2*u(t+2));
 plot(t, u(t));
 hold on;
 
 
%plot(t, u(t-1) - u(t-2));
%grid; 
%hold on;
%plot(t, g(t));
%hold off;
clear all