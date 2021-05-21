n = (0:12)'; 
y = [2000;zeros(length(n)-1,1)];%This inserts the initial condition intop the y[n] array
for k = 1:length(n)-1,
    y(k+1) = 1.02*y(k);
end
clf; stem(n,y,'k'); xlabel('n'); ylabel('y[n]'); axis([-2 20 0 5000]);
title('Zero input response, with y[0] = 2000 dollars')
clear all;
