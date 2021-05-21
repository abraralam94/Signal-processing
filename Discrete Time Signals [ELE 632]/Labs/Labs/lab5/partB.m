% preliminary steps
close all
load gong.mat;
filename = 'gong.wav';
audiowrite(filename,y,Fs);
clear y Fs
[y,f_s] = audioread ('gong.wav');

%B1
N_0 = size(y,1); % number of samples
T = 1/f_s; % sampling interval
T_0 = N_0*T; % duration of the signal

%B2
figure(1)
t = 0:T:(T_0-T);
plot(t,y,'.');
title("B2: y with respect to time");
xlabel("t (s)"); ylabel("y(t)");

%B3
figure(2)
Y = fft(y);
f = (0:N_0-1)/T_0;
stem(f-1/(T*2),real(Y),'.');
title("B3: Y(f) (real) with respect to frequency");
xlabel("f"); ylabel("Y(f)");

%B4
y_1 = y(1:2:N_0);
N_0_y1 = length(y_1);
f_s_y1 = f_s/2;
T_y1 = 1/f_s_y1;
T_0_y1 = T_y1*N_0_y1;

%B5
figure(3)
t_y1 = 0:T_y1:T_0_y1-T_y1;
plot(t_y1,y_1,'.');
title("B5: y_1 with respect to time");
xlabel("t (s)"); ylabel("y_1(t)");

%B6
figure(4)
Y_1 = fft(y_1);
f_y1 = (0:N_0_y1-1)/T_0_y1;
stem(f_y1-1/(T_y1*2),real(Y_1),'.');
title("B6: Y_1(f) (real) with respect to frequency");
xlabel("f"); ylabel("Y_1(f)");

%B7 below

%B8
y_2 = y(1:5:N_0);
N_0_y2 = length(y_2);
f_s_y2 = f_s/5;
T_y2 = 1/f_s_y2;
T_0_y2 = T_y2*N_0_y2;
n_y2 = 0:T_y2:(T_0_y2-T_y2);

figure(5);
plot(n_y2,y_2,'.');
title("B8a: y subsampled with rate = 5");
xlabel("t (s)"); ylabel("y_2(t)");

figure(6);
Y_2 = fft(y_2);
f_y2 = (0:N_0_y2-1)/T_0_y2;
stem(f_y2-1/(T_y2*2),real(Y_2),'.');
title("B8b: DFT of the above signal");
xlabel("f"); ylabel("Y_2(f)");

%B7
while(true)
    prompt = "Press 0 to hear original signal, 1 to hear signal subsampled at rate 2, 2 to exit\n";
    x = input(prompt);
    switch(x)
        case 0
            sound(y, f_s)
            x = -1;
        case 1
            sound(y_1, f_s_y1)
            x = -1;
        case 2
            break;
    end
end