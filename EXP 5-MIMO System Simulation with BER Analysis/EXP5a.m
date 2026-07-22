clc; clear; close all;
% SNR range
SNR_dB = 0:2:20;
SNR = 10.^(SNR_dB/10);
% MIMO parameters
Nt = 2; Nr = 2;
BER = zeros(1,length(SNR));
for i = 1:length(SNR)
    bits = randi([0 1],10000,1);
    symbols = 2*bits-1; % BPSK
    H = (randn(Nr,Nt) + 1j*randn(Nr,Nt))/sqrt(2);
    noise = (randn(Nr,10000) + 1j*randn(Nr,10000))/sqrt(2*SNR(i));
    tx = H(1,1)*symbols' + noise(1,:);
    rx = real(tx) > 0;
    BER(i) = sum(rx' ~= bits)/length(bits);
end
figure
% -------- Graph 1: BER vs SNR --------
subplot(2,1,1)
semilogy(SNR_dB,BER,'-o','LineWidth',2)
title('MIMO BER Performance vs SNR')
xlabel('SNR (dB)')
ylabel('Bit Error Rate (BER)')
grid on
% -------- Graph 2: SNR vs Quality Indicator --------
subplot(2,1,2)
plot(SNR_dB,1-BER,'-s','LineWidth',2)
title('MIMO System Reliability vs SNR')
xlabel('SNR (dB)')
ylabel('Reliability (1 - BER)')
grid on