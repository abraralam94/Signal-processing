a = [1 -3/10 -1/10];%%Differenee coeff. of the y[n]
b = [2 0 0];%%Differenee coeff. of the x[n]
n = (0:30)';

z_i = filtic(b,a,[1 2]);% The [1 2] signifies the initial conditions, that
                        % is y[-1] =1, y[-2] = 2
y_0 = filter(b,a,zeros(size(n)),z_i);
stem(n,y_0,'k'); xlabel('n'); ylabel('y_{0} [n]');
axis([-0.2 8 -0.1 0.53]);
title('Part B, Zero input response, y_{0} [n]');
clear all;