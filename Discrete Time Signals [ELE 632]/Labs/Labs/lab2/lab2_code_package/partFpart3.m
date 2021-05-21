%part F part 3: Moving average filter - testing the filter

n=(0:44); % 0 to 44 inclusive, hence 45 points

delta = @(n) 1.0.*(n==0); %unit impulse

x = @(n) cos(pi*n/5) + delta(n-30) - delta(n-35);

clf;
[a, b] = partFpart2(4);
y_N4 = filter(b, a, x(n));
subplot(3,1,1); stem(n, y_N4); ylabel("y[n]"); xlabel("n"); title("Part F, N = 4"); axis([-1 45 -1 1]);

[a, b] = partFpart2(8);
y_N8 = filter(b, a, x(n));
subplot(3,1,2); stem(n, y_N8); ylabel("y[n]"); xlabel("n"); title("Part F, N = 8"); axis([-1 45 -1 1]);

[a3, b3] = partFpart2(12);
y_N12 = filter(b3, a3, x(n));
subplot(3,1,3); stem(n, y_N12); ylabel("y[n]"); xlabel("n"); title("Part F, N = 12"); axis([-1 45 -1 1]);