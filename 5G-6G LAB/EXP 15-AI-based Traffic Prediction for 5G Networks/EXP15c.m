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

% Calculate Prediction Error 
error = traffic - predicted; 

% Calculate RMSE 
RMSE = sqrt(mean(error.^2)); 
disp(['Root Mean Square Error (RMSE) = ', num2str(RMSE)]); 

figure; 
subplot(2,1,1); 
plot(time, traffic, 'bo-', 'LineWidth', 2); 
hold on; 
plot(time, predicted, 'r*-', 'LineWidth', 2); 
grid on; 
xlabel('Time (Hours)'); 
ylabel('Traffic (Mbps)'); 
title('Actual vs Predicted Traffic'); 
legend('Actual', 'Predicted', 'Location', 'best'); 

subplot(2,1,2); 
bar(time, error); 
grid on; 
xlabel('Time (Hours)'); 
ylabel('Prediction Error (Mbps)'); 
title('Prediction Error'); 

disp('Time    Actual    Predicted'); 
disp([time' traffic' predicted']);