clc;
clear;
close all;
% SNR values (dB)
SNR = 0:5:30;
% Simulated Packet Delivery Ratio (%)
NB_IoT = [82 86 89 92 95 97 99];
LTE_M = [88 91 94 96 98 99 100];
disp('SNR(dB) NB-IoT PDR(%) LTE-M PDR(%)')
disp([SNR' NB_IoT' LTE_M'])

figure
% -------- Graph 1 --------
subplot(2,1,1)
plot(SNR,NB_IoT,'-o','LineWidth',2)
title('NB-IoT Packet Delivery Ratio vs SNR')
xlabel('Signal-to-Noise Ratio (dB)')
ylabel('Packet Delivery Ratio (%)')
grid on
% -------- Graph 2 --------
subplot(2,1,2)
plot(SNR,LTE_M,'-s','LineWidth',2)
title('LTE-M Packet Delivery Ratio vs SNR')
xlabel('Signal-to-Noise Ratio (dB)')
ylabel('Packet Delivery Ratio (%)')
grid on