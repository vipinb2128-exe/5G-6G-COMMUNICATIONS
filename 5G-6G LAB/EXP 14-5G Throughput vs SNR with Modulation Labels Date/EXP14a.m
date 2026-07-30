clc;
clear;
close all;
% SNR values (dB)
SNR = 0:5:30;
% Maximum Throughput (Mbps)
Max_TP = 100;
% Throughput calculation
Throughput = Max_TP*(1-exp(-SNR/10));
disp('SNR(dB) Throughput(Mbps)')
disp([SNR' Throughput'])
figure
% -------- Graph 1 --------
subplot(2,1,1)
plot(SNR,Throughput,'-o','LineWidth',2)
title('5G Throughput vs SNR')
xlabel('Signal-to-Noise Ratio (dB)')
ylabel('Throughput (Mbps)')
grid on
% -------- Graph 2 --------

subplot(2,1,2)
bar(Throughput)
title('Throughput at Different SNR Levels')
xlabel('SNR Index')
ylabel('Throughput (Mbps)')
grid on