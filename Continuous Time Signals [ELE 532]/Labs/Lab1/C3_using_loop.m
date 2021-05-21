t = (0 : 0.01 : 4);
% defining the u(t)
u = @(t)1.0 .* (t >= 0);

for i = 0:3
    plot(t, exp(-2)*exp(-1*((2*i) + 1)*t).*cos(4*pi*t).*u(t));
    grid;
    xlabel('t');
    ylabel('exp(-2)exp(-at)cos(4*pi*t)u(t)');
    hold on;
end

hold off;
clear all;
