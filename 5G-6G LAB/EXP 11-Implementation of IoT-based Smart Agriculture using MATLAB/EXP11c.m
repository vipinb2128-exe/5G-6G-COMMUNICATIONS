clc; clear; close all;
% Simulated soil moisture data (%)
time = 1:10;
soil_moisture = [30 35 28 25 20 18 22 30 40 45];
% Threshold level
threshold = 40;
% Irrigation efficiency calculation (%)
efficiency = (soil_moisture ./ threshold) * 100;
efficiency(efficiency > 100) = 100; % limit to 100%

figure
% -------- Graph 1: Soil Moisture vs Efficiency -------- 
subplot(2,1,1)
plot(time, soil_moisture, '-o', 'LineWidth', 2) 
title('Soil Moisture Variation')
xlabel('Time (Hours)')
ylabel('Soil Moisture (%)')
grid on
hold on
yline(threshold, 'r--', 'Threshold')

% -------- Graph 2: Irrigation Efficiency -------- 
subplot(2,1,2)
plot(time, efficiency, '-s', 'LineWidth', 2)
title('Irrigation Efficiency (%) in Smart Agriculture') 
xlabel('Time (Hours)')
ylabel('Efficiency (%)')
grid on