clc;
clear;
close all;
% SNR values (dB)
SNR = 0:5:30;
% Simulated Throughput (Mbps)
NB_IoT = 0.05*(1-exp(-SNR/8));
LTE_M = 1.2*(1-exp(-SNR/8));
disp('SNR (dB) NB-IoT(Mbps) LTE-M(Mbps)')
disp([SNR' NB_IoT' LTE_M'])
figure
% -------- Graph 1 --------
subplot(2,1,1)
plot(SNR,NB_IoT,'-o','LineWidth',2)
title('NB-IoT Throughput vs SNR')
xlabel('Signal-to-Noise Ratio (dB)')
ylabel('Throughput (Mbps)')
grid on
% -------- Graph 2 --------
subplot(2,1,2)
plot(SNR,LTE_M,'-s','LineWidth',2)

title('LTE-M Throughput vs SNR')
xlabel('Signal-to-Noise Ratio (dB)')
ylabel('Throughput (Mbps)')
grid on