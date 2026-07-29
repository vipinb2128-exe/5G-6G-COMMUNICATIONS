% =========================================================================
% MATLAB Simulation: LTE-A Carrier Aggregation (CA) Performance
% Analyzes Single, Dual, and Triple Carrier setups over Bandwidth & SNR
% =========================================================================
clear; clc; close all;

%% 1. Simulation Parameters
snr_dB = 0:2:30;             % SNR range in dB
snr_lin = 10.^(snr_dB / 10); % SNR in linear scale
implementation_eff = 0.6;    % LTE Link Efficiency factor (~60% of Shannon capacity)

% Carrier Aggregation Configurations
% Format: [Num Carriers, Bandwidth per Carrier (MHz)]
configs = struct(...
    'Single', [1, 20], ...
    'Dual',   [2, 20], ...
    'Triple', [3, 20]  ...
    );

%% 2. Calculate Throughput vs SNR (Fixed Component Carrier Bandwidth = 20 MHz)
throughput_single = configs.Single(1) * (configs.Single(2) * 1e6) * implementation_eff .* log2(1 + snr_lin) / 1e6; % Mbps
throughput_dual   = configs.Dual(1)   * (configs.Dual(2)   * 1e6) * implementation_eff .* log2(1 + snr_lin) / 1e6; % Mbps
throughput_triple = configs.Triple(1) * (configs.Triple(2) * 1e6) * implementation_eff .* log2(1 + snr_lin) / 1e6; % Mbps

%% 3. Calculate Throughput vs Varying Total Bandwidth (At Fixed SNR = 15 dB)
fixed_snr_lin = 10^(15 / 10);
total_bw_range = 10:10:100; % Total Bandwidth in MHz
throughput_vs_bw = total_bw_range * 1e6 * implementation_eff * log2(1 + fixed_snr_lin) / 1e6;

%% 4. Plotting Results
figure('Name', 'LTE-A Carrier Aggregation Performance', 'NumberTitle', 'off');

% Subplot 1: Throughput vs SNR for Single, Dual, Triple CC
subplot(2,1,1);
plot(snr_dB, throughput_single, '-o', 'LineWidth', 2, 'DisplayName', 'Single Carrier (1x20 MHz)'); hold on;
plot(snr_dB, throughput_dual, '-s', 'LineWidth', 2, 'DisplayName', 'Dual Carrier (2x20 MHz)');
plot(snr_dB, throughput_triple, '-^', 'LineWidth', 2, 'DisplayName', 'Triple Carrier (3x20 MHz)');
grid on;
title('LTE-A Throughput vs. SNR for Different CA Configurations');
xlabel('SNR (dB)');
ylabel('Throughput (Mbps)');
legend('Location', 'northwest');

% Subplot 2: Throughput vs Varying Total Aggregated Bandwidth
subplot(2,1,2);
plot(total_bw_range, throughput_vs_bw, '-d', 'LineWidth', 2, 'Color', [0.8500 0.3250 0.0980]);
grid on;
title('LTE-A Max Capacity vs. Total Aggregated Bandwidth (SNR = 15 dB)');
xlabel('Total Aggregated Bandwidth (MHz)');
ylabel('Throughput (Mbps)');

%% 5. Display Summary Metrics
disp('--- LTE-A Carrier Aggregation Analysis Summary ---');
fprintf('At 15 dB SNR:\n');
fprintf('  Single Carrier (20 MHz): %.2f Mbps\n', throughput_single(snr_dB == 15));
fprintf('  Dual Carrier   (40 MHz): %.2f Mbps\n', throughput_dual(snr_dB == 15));
fprintf('  Triple Carrier (60 MHz): %.2f Mbps\n', throughput_triple(snr_dB == 15));