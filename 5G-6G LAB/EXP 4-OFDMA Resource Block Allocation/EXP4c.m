clc; clear; close all;
% System parameters
rb_bw = 180e3; % Bandwidth per RB (180 kHz)

users = 1:5;
% Allocated Resource Blocks per user
alloc_RB = [12 10 9 8 11];
% Modulation efficiency (bits/symbol)
mod_eff = [2 4 6 4 2]; % QPSK, 16QAM, 64QAM etc.
% Throughput calculation (Mbps)
throughput = (alloc_RB .* rb_bw .* mod_eff) / 1e6;
disp('User Throughput (Mbps):')
disp(throughput')
figure
% -------- Graph 1: Throughput per User --------
subplot(2,1,1)
plot(users, throughput, '-o', 'LineWidth', 2)
title('OFDMA User Throughput')
xlabel('User Index')
ylabel('Throughput (Mbps)')
grid on
% -------- Graph 2: RB vs Throughput --------
subplot(2,1,2)
plot(alloc_RB, throughput, '-s', 'LineWidth', 2)
title('Resource Blocks vs Throughput Relationship')
xlabel('Allocated Resource Blocks')
ylabel('Throughput (Mbps)')
grid on