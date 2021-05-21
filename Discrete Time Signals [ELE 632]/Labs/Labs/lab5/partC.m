% preliminary steps
close all
load gong.mat;
filename = 'gong.wav';
audiowrite(filename,y,Fs);
clear y Fs
[y,f_s] = audioread ('gong.wav');

%C1
N_0 = size(y,1); % number of samples
T = 1/f_s; % sampling interval
T_0 = N_0*T; % duration of the signal

t = 0:T:(T_0-T);
f = (-N_0/2:N_0/2-1)/T_0;
Y = fftshift(fft(y')).*(abs(f)<2000);
y_filter_2000 = ifft(fftshift(Y));

figure(1);
subplot(211);
plot(t,real(y_filter_2000),'.');
title("C1a Filtered y - frequencies less than 2000 - time domain"); ylabel("y(t)"); xlabel("t (s)");
subplot(212);
stem(f,abs(Y),'.');
title("C1b DFT of the above signal (frequency domain)"); ylabel("Y(f)"); xlabel("f (Hz)");

%C2 below

%C3
Y2 = fftshift(fft(y')).*(abs(f)<16|abs(f)>256);
y_filter_nobass = ifft(fftshift(Y2));

figure(2);
stem(f,abs(Y2),'.');
title("C3 Filtered y - cuts bass frequencies 16-256 Hz, frequency spectrum"); ylabel("Y(f)"); xlabel("f (Hz)");

%C4
Y3 = fftshift(fft(y')).*(abs(f)>=2048 & abs(f)<=16384).*1.25+fftshift(fft(y')).*(abs(f)<2048|abs(f)>16384);
y_filter_amptreb = ifft(fftshift(Y3));

figure(3);
stem(f,abs(Y3),'.');
title("C4 Filtered y - amplifies treble frequencies 2048-16384Hz, frequency spectrum"); ylabel("Y(f)"); xlabel("f (Hz)");

%C2, C3, C4 sounds
prompt = "Press 0 to hear original signal, " + ...
"1 to hear signal which only passes frequencies less than 2000, \n" + ...
"2 to hear signal which cuts bass frequencies, " + ...
"3 to hear signal that amplifies treble frequencies, 4 to exit\n";
while(true)
    x = input(prompt);
    switch(x)
        case 0
            sound(y, f_s)
        case 1
            sound(real(y_filter_2000), f_s)
        case 2
            sound(real(y_filter_nobass), f_s);
        case 3
            sound(real(y_filter_amptreb), f_s);
        case 4
            break
    end
end