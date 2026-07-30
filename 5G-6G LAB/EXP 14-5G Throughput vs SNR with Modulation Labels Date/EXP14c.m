clc;
clear;
close all;

% Modulation schemes
Modulation = {'QPSK','16-QAM','64-QAM','256-QAM'};
% Required SNR (dB)
SNR = [5 10 18 25];
% Spectral Efficiency (bits/s/Hz)
Efficiency = [2 4 6 8];
disp('Required SNR (dB) and Spectral Efficiency')
disp(table(Modulation',SNR',Efficiency', ...
    'VariableNames',{'Modulation','SNR_dB','Efficiency'}))
figure
% -------- Graph 1 --------
subplot(2,1,2)
plot(SNR,Efficiency,'-o','LineWidth',2)
title('SNR vs Spectral Efficiency')
xlabel('Signal-to-Noise Ratio (dB)')
ylabel('Spectral Efficiency (bits/s/Hz)')
grid on
% -------- Graph 2 --------
subplot(2,1,1)
plot(1:4,SNR,'-s','LineWidth',2)
xticks(1:4)
xticklabels(Modulation)
title('Required SNR for Different Modulation Schemes')
xlabel('Modulation Scheme')
ylabel('Required SNR (dB)')
grid on