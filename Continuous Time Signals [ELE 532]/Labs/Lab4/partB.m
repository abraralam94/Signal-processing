% First we modulate our x_speech signal, this means we first 
% multiply x_sppech (already in time domain) with a cosine function 
% with freq. of 4000 Hz.

MagSpect(xspeech);
title("speech before modulation");

modulator = osc(4000, 80000);
modulated_speech = modulator .* xspeech;
figure;
MagSpect(modulated_speech); %for observing our resultant modulated 
                            %speech before transmitting it to a band pass filter
title("modulated speech");

%now we transmit this modulated x-speech to a band pass filter
transmitted_speech = conv(modulated_speech, hChannel);

% now we varify that our signal has passed through the channel without 
% any significant loss in freq. spectrum
figure;
MagSpect(transmitted_speech);title("transmitted speech");

% Now we demodulate with a same freq. of 4000 Hz. 
demodulator = osc(4000, 80810);
demodulated_speech = transmitted_speech.* demodulator;
figure;
MagSpect(demodulated_speech);title("demodulated speech");

% From our demodulated speech freq. spectrum we see that our LPF
% with bndwidth of 2Khz is the most desirable. If we chose 2.5 Khz 
% LPF, we will capture high freq. signals which are not desirable.
decoded_speech = conv(demodulated_speech, hLPF2000);
figure;
MagSpect(decoded_speech);title("dcoded speech");



