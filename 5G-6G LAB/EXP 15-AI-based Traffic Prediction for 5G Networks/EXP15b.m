clc; 
clear; 
close all; 

% Simulated Traffic Data 
time = 1:20; 
traffic = [20 25 30 35 40 50 60 58 65 70 ... 
    75 80 78 85 90 95 100 98 105 110]; 

% Linear Regression Model 
model = polyfit(time, traffic, 1); 

% Predicted Traffic 
predicted = polyval(model, time); 

figure; 
plot(time, traffic, 'bo-', 'LineWidth', 2); 
hold on; 
plot(time, predicted, 'r*-', 'LineWidth', 2); 
grid on; 
xlabel('Time (Hours)'); 
ylabel('Network Traffic (Mbps)'); 
title('AI-Based Traffic Prediction using Linear Regression'); 
legend('Actual Traffic', 'Predicted Traffic', 'Location', 'best');