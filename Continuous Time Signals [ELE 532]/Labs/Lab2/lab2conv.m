%Create equally spaced time intervals
t1 = -10;
t2 = 10;
N = 2000;
Delta_t = (t2-t1)/N;
t = t1 : Delta_t : t2;

%Create x(t)
x = zeros(size(t));
x(find(t >= -1 & t <= 1)) = 1;

%create h(t)
for i = 1:length(t)
    if (t(i) < -1 || t(i) > 1)
        h(i) = 0;
    else
        h(i) = t(i);
    end
end

%need to multiply by Delta_t as in the sum in eq. 1a
x1 = x*Delta_t;

%perform convolution
y = conv(x1, h);

%plot details
subplot(3,1,1); plot(t, x); axis([t1, t2, -0.1, 1.1]);
title('x(t)'); xlabel('t');

subplot(3,1,2); plot(t, h);
title('h(t)'); xlabel('t');

% to plot arrays(varibles) must be equal in size
% In our case y is longer than t, so we only take the middle 2001 values;
subplot(3,1,3);plot(t,y(1000:3000));
title('y(t)');xlabel('t');
