clc; 
clear; 
close all; 

% Simulated 5G Network Traffic (Mbps) 
time = 1:20; 
traffic = [20 25 30 35 40 50 60 58 65 70 ... 
    75 80 78 85 90 95 100 98 105 110]; 

figure; 
plot(time, traffic, '-o', 'LineWidth', 2); 
grid on; 
xlabel('Time (Hours)'); 
ylabel('Network Traffic (Mbps)'); 
title('Simulated 5G Network Traffic');