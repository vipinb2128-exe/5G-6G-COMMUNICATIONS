clc; clear; close all;
% SNR range (dB)
SNR_dB = 0:2:20;
SNR = 10.^(SNR_dB/10);
% MIMO parameters
Nt = 2; Nr = 2;
% Simulated reliability metric (inverse BER model)
Reliability = zeros(1,length(SNR));
for i = 1:length(SNR)
    % simple channel model effect
    H = (randn(Nr,Nt) + 1j*randn(Nr,Nt))/sqrt(2);
    noise_power = 1/SNR(i);
    % reliability increases with SNR
    Reliability(i) = 1 - exp(-SNR(i)/10);
end

figure
% -------- Graph 1: SNR vs Reliability --------
subplot(2,1,1)
plot(SNR_dB, Reliability, '-o', 'LineWidth', 2)
title('MIMO Reliability vs SNR')
xlabel('SNR (dB)')
ylabel('Reliability (0 to 1)')
grid on
% -------- Graph 2: SNR vs Noise Effect --------
subplot(2,1,2)
plot(SNR_dB, noise_power*ones(size(SNR_dB)), '-s', 'LineWidth', 2)
title('Noise Power Variation with SNR')
xlabel('SNR (dB)')
ylabel('Noise Power')
grid on