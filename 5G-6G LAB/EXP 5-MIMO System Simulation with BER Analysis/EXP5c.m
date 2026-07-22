https://github.com/vipinb2128-exe/5G-6G-COMMUNICATIONSclc; clear; close all;

% Resource Block parameters
rb_bw = 180e3; % 180 kHz per RB
% Users
users = 1:5;
% Allocated Resource Blocks per user
alloc_RB = [10 12 8 15 5];
% Modulation efficiency (bits/symbol)
mod_eff = [2 4 6 4 2]; % QPSK, 16QAM, 64QAM etc.
% Throughput calculation (Mbps)
throughput = (alloc_RB .* rb_bw .* mod_eff) / 1e6;
% Display results
disp('User Throughput (Mbps):')
disp(throughput')
figure
% -------- Graph 1: Throughput per User --------
subplot(2,1,1)
plot(users, throughput, '-o','LineWidth',2)
title('OFDMA User Throughput')
xlabel('User Index')
ylabel('Throughput (Mbps)')
grid on
% -------- Graph 2: RB vs Throughput --------
subplot(2,1,2)
plot(alloc_RB, throughput, '-s','LineWidth',2)
title('Resource Blocks vs Throughput')
xlabel('Allocated Resource Blocks')
ylabel('Throughput (Mbps)')
grid on