% =========================================================================
% MATLAB Simulation: NB-IoT Performance Analysis (BL4)
% Metrics: Coverage (MCL/Repetitions), Delay, Power, Throughput, Packet Loss
% =========================================================================
clear; clc; close all;

%% 1. Parameters & Coverage Classes
% Coverage Enhancement (CE) Levels: Normal, Extended, Extreme
repetitions = [1, 4, 16, 64, 128]; % Repetition count required for deep coverage
num_levels = length(repetitions);

bw_nbiot = 180e3;             % 180 kHz Subcarrier Bandwidth
base_snr_dB = [10, 2, -5, -12, -18]; % Base SNR worsening with distance/penetration
payload_bits = 1000 * 8;      % 1 KB payload

% Hardware Power Profiles (mW)
P_tx = 500;   % Transmit Power
P_rx = 80;    % Receive Power
P_idle = 2;   % Idle / DRX Power
P_sleep = 0.015; % PSM (Power Saving Mode)

%% 2. Performance Calculations

% A. Throughput & Delay
base_data_rate = 20e3; % Max uplink raw rate (~20 kbps)
effective_data_rate = base_data_rate ./ repetitions; % Rate degrades with repetitions
delay_sec = (payload_bits ./ effective_data_rate) + (repetitions * 0.01); % Transmission + latency

% B. Energy & Power Consumption per Transmission Cycle
e_tx = (delay_sec .* P_tx) + (0.5 * P_rx) + (2 * P_idle); % Energy in mJ
avg_power_mW = e_tx ./ (delay_sec + 10); % Averaged over 10s reporting period

% C. Packet Loss Ratio (PLR) model based on SNR and repetitions
snr_lin = 10.^(base_snr_dB / 10);
combining_gain = 10 * log10(repetitions); % Processing gain from repetitions
effective_snr_dB = base_snr_dB + combining_gain;

% Bit Error Rate (BER) for BPSK in AWGN and estimated Packet Loss
ber = 0.5 * erfc(sqrt(10.^(effective_snr_dB/10)));
packet_loss_ratio = 1 - (1 - ber).^payload_bits;
packet_loss_ratio = min(max(packet_loss_ratio, 0.001), 0.95); % Clamped for realism

%% 3. Visualizations
figure('Name', 'NB-IoT Performance Trade-offs', 'NumberTitle', 'off');

% Subplot 1: Delay vs Repetitions (Coverage Trade-off)
subplot(2,2,1);
stem(repetitions, delay_sec, 'filled', 'LineWidth', 1.5, 'Color', 'b');
grid on; set(gca, 'XScale', 'log');
title('A. Latency/Delay vs. Repetitions');
xlabel('Repetition Count (Coverage Drive)'); ylabel('Latency (Seconds)');

% Subplot 2: Effective Throughput vs Repetitions
subplot(2,2,2);
plot(repetitions, effective_data_rate/1000, '-o', 'LineWidth', 2, 'Color', 'r');
grid on; set(gca, 'XScale', 'log');
title('B. Effective Throughput vs. Repetitions');
xlabel('Repetition Count'); ylabel('Throughput (kbps)');

% Subplot 3: Average Power Consumption
subplot(2,2,3);
bar(1:num_levels, avg_power_mW, 'FaceColor', [0.4660 0.6740 0.1880]);
grid on; set(gca, 'XTickLabel', repetitions);
title('C. Avg Power Consumption');
xlabel('Repetition Count'); ylabel('Power (mW)');

% Subplot 4: Packet Loss Ratio
subplot(2,2,4);
plot(effective_snr_dB, packet_loss_ratio * 100, '-^k', 'LineWidth', 2);
grid on;
title('D. Packet Loss vs. Effective SNR');
xlabel('Effective SNR after Combining (dB)'); ylabel('Packet Loss (%)');

%% 4. Print Analysis
disp('--- NB-IoT Coverage Level Analysis ---');
for i = 1:num_levels
    fprintf('Reps: %3d | Effective SNR: %5.1f dB | Latency: %5.2f s | Energy: %6.1f mJ | Packet Loss: %4.1f%%\n', ...
        repetitions(i), effective_snr_dB(i), delay_sec(i), e_tx(i), packet_loss_ratio(i)*100);
end