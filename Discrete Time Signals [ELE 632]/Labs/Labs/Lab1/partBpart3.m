n = (0:12)'; 
y = [2000;zeros(length(n)-1,1)];%This inserts the initial condition intop the y[n] array
for k = 1:length(n)-1,% Since we only have one init. condition
    y(k+1) = 1.02*y(k) + (100*k) ;
end
clf; stem(n,y,'k'); xlabel('n'); ylabel('y[n]'); axis([-2 20 0 12100]);
title('total response, with y[0] = 2000 dollars')
clear all;