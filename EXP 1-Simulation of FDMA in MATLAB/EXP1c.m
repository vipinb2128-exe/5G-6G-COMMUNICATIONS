clc; clear; close all;
Ps = 1; % Signal Power (W)
Pn = [0.1 0.05 0.01]; % Noise Power (W)
Users = 1:3;
SNR = 10*log10(Ps./Pn); % SNR in dB
disp('User Noise Power(W) SNR(dB)')
disp([Users' Pn' SNR'])
figure
bar(Users,SNR)
xlabel('Users')
ylabel('SNR (dB)')
title('Signal-to-Noise Ratio of FDMA Users')
grid on