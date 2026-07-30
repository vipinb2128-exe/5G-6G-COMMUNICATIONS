clc;  
clear;  
close all; 
scs = [15 30 60 120 240]; % Subcarrier Spacing (kHz)  
mu = 0:4; % Numerology Index  
bar(scs)  
grid on  
set(gca,'XTick',1:5)  
set(gca,'XTickLabel',mu)  
xlabel('Numerology Index (\mu)')  
ylabel('Subcarrier Spacing (kHz)')  
title('5G NR Subcarrier Spacing for Different Numerologies') 