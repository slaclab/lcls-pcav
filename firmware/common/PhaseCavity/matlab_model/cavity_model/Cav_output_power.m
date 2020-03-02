close all;
clear all;

lcls_cable_loss = (0.28 + 3); % Insertion loss 12in - 0.28dB, 15ft - 3dB
lcls2_cable_loss = (0.26 + 2.9); % Insertion loss 12in - 0.28dB, 15ft - 3dB

% LCLS 1
q = 10e-12
fr = 2851.3e6;
w = fr*2*pi;
QL = 6898.4;
Q0 = 14233.6;
beta_val = (Q0/QL) - 1;
Qe = Q0/beta_val;
ROQ = 158.65;
Rsh = ROQ * Q0;
bw = fr/QL;
tau = 1/(2*pi*bw/2);

% LCLS 2
q = 10e-12
fr_LCLS2 = 2595.3e6;
w_LCLS2 = fr_LCLS2*2*pi;
Q0_LCLS2 = 13587.3;
QL_LCLS2 = Q0_LCLS2*2;
beta_val_LCLS2 = (Q0_LCLS2/QL_LCLS2) - 1;
Qe_LCLS2 = Q0_LCLS2/beta_val_LCLS2;
ROQ_LCLS2 = 157.4;
Rsh_LCLS2 = ROQ_LCLS2 * Q0_LCLS2;
bw_LCLS2 = fr_LCLS2/QL_LCLS2;
tau_LCLS2 = 1/(2*pi*bw_LCLS2/2);


q_min = 10e-12;
q_max = 1.1e-9;
q_step = 10e-12;
q = q_min:q_step:q_max;
V_cav_p_ary = zeros(length(q),2);
P_ext_pwr_ary = zeros(length(q),2);
P_per_sma_ary = zeros(length(q),2);
P_per_sma_dbm_ary = zeros(length(q),2);
% cav_ring_q_ary = zeros(length(q),length(t));

% for k = 1:length(q)
%     V_cav_p_ary(k,1) = ROQ * w * q(k);
%     P_ext_pwr_ary(k,1) = (V_cav_p_ary(k,1)^2) / (ROQ*Qe);
%     P_per_sma_ary(k,1) = P_ext_pwr_ary(k,1)/2;
% 
% end

for k = 1:length(q)
    V_cav_p_ary(k,1) = w * q(k);
    P_ext_pwr_ary(k,1) = 0.25 * ROQ * (1/Q0) * (V_cav_p_ary(k,1)^2);
    P_per_sma_ary(k,1) = P_ext_pwr_ary(k,1)/2;

end
for k = 1:length(q)
    V_cav_p_ary(k,2) = w_LCLS2 * q(k);
    P_ext_pwr_ary(k,2) = 0.25 * ROQ_LCLS2 * (1/Q0_LCLS2) * (V_cav_p_ary(k,2)^2) * (2.05);
    P_per_sma_ary(k,2) = P_ext_pwr_ary(k,2)/2;

end
P_per_sma_dbm_ary = 10.*log10(P_per_sma_ary./(1e-3));



% figure()
% plot(q./(1e-12), P_ext_pwr_ary(:,1)/(1e-3)); grid on;
% title('beam charge vs. Pwr output')
% set(get(gca, 'XLabel'), 'String', 'beam charge (pQ)');
% set(get(gca, 'YLabel'), 'String', 'mWatt');
% 
% figure()
% plot(q./(1e-12), P_per_sma_ary(:,1)/(1e-3)); grid on;
% title('beam charge vs. SMA power')
% set(get(gca, 'XLabel'), 'String', 'beam charge (pQ)');
% set(get(gca, 'YLabel'), 'String', 'mWatt');

figure()
semilogx(q./(1e-12), P_per_sma_dbm_ary(:,1)); hold on
semilogx(q./(1e-12), P_per_sma_dbm_ary(:,1)-lcls_cable_loss);
grid on;
title('LCLS 1 beam charge vs. N-con output power')
set(get(gca, 'XLabel'), 'String', 'beam charge (pQ)');
set(get(gca, 'YLabel'), 'String', 'LCLS1 cavity output (dBm)');

figure()
semilogx(q./(1e-12), P_per_sma_dbm_ary(:,1)-lcls_cable_loss); grid on;
title('LCLS 1 beam charge vs. chassis input power')
set(get(gca, 'XLabel'), 'String', 'beam charge (pQ)');
set(get(gca, 'YLabel'), 'String', 'LCLS1 chassis input (dBm)');

% figure()
% plot(q./(1e-12), P_ext_pwr_ary(:,2)/(1e-3)); grid on;
% title('beam charge vs. Pwr output')
% set(get(gca, 'XLabel'), 'String', 'beam charge (pQ)');
% set(get(gca, 'YLabel'), 'String', 'mWatt');
% 
% figure()
% plot(q./(1e-12), P_per_sma_ary(:,2)/(1e-3)); grid on;
% title('beam charge vs. SMA power')
% set(get(gca, 'XLabel'), 'String', 'beam charge (pQ)');
% set(get(gca, 'YLabel'), 'String', 'mWatt');

figure()
semilogx(q./(1e-12), P_per_sma_dbm_ary(:,2)); hold on
semilogx(q./(1e-12), P_per_sma_dbm_ary(:,2)-lcls2_cable_loss);
grid on;
title('LCLS 2 beam charge vs. N-con power')
set(get(gca, 'XLabel'), 'String', 'beam charge (pQ)');
set(get(gca, 'YLabel'), 'String', 'LCLS2 cavity output (dBm)');

figure()
semilogx(q./(1e-12), P_per_sma_dbm_ary(:,2)-lcls2_cable_loss); grid on;
title('LCLS 2 beam charge vs. chassis input power')
set(get(gca, 'XLabel'), 'String', 'beam charge (pQ)');
set(get(gca, 'YLabel'), 'String', 'LCLS2 chassis input (dBm)');