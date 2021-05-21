t = (-2.02 : 0.001 : 2.02);
x = @(t) t .* ((t >= 0) & (t <= 1));
x2 = @(t) x(t) + x(-t+1) + x(t+1) + x(-t); % problematic
%plot(t, x2(t));
%hold on;
%plot(t, x((1/2)*(t+1)) + x((-1/2)*(t-1))); % this works fine
%plot(t, x(t+1) + x(-t + 1)); % this matches with the solution, but noise present
%plot(t, x((1/2)*t + 1/2) + x(-(1/2)*t + 1/2));
plot (t, x(-(1/4)*(t-2)) + x((1/4)*(t+2)));