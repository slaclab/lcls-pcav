% ####################################################################
% Filename: RF_DAC_test.m
% Author: Chengcheng Xu (charliex@slac.stanford.ed)
% Date: 04/26/2019
% ####################################################################
close all
clear all

prefix   = 'SIOC:B84:PC01:';
jesd     = 'AT:ATJ%i:JR:';
daqmux   = 'AT:DM%i:';
wave_eng = 'ACC:ACBsa:BWE%i:Wf:';
sysgen   = 'AT:AC:SMR:';
llrfhw   = 'AT:AC:Llrf';
attn     = {'DC:Att1','DC:Att0','DC:Att3','DC:Att2','DC:Att5','DC:Att4','UC:Att0','UC:Att1','UC:Att2','UC:Att3'}; % Attn PV LUT
FP_label = {'DC RF 2','DC RF 1','DC RF 4','DC RF 3','DC RF 6','DC RF 5','UC RF 2','UC RF 1','UC RF 3'}; % LUT for FP to channel
RF_DAC_I = 'ifSetI:St';
RF_DAC_Q = 'ifSetQ:St';
output_en= 'outputEnable:St';
cw_en    = 'cwModeEnable:St';
% Needs to check the UC PV
% HW attn value LUT
% HMC624A has a inverse high attn value setting 6bit input with 0.5dB step.  0dB - 63, 0.5dB - 62 ... 31.5dB - 0
attn_key = linspace(63,0,64); 
attn_ary = 0:0.5:31.5;

setup_err_bypass = 1;
run_times = 4;
pause_time = 0;
step_time  = 15;
RF_DAC_rb = zeros(run_times,step_time);
RF_Mon_rb = zeros(run_times,step_time);
FPGA_DAC_rb = zeros(run_times,step_time);
DAC_out_ary = zeros(run_times,step_time);
lin_fit = zeros(run_times, 3);
RF_pass = zeros(run_times, 1);
RF_rb_chan = 7;
RF_mon_rb_chan = 9;
FPGA_rb_chan = 12;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Reference select PVs for clockPll, adPll, loPll
ref_chan = 0;
pll = {'adPll', 'loPll', 'clockPll'};
ref_sel = zeros(3,1);
for i = 1:3
   lcaPut([prefix, sysgen, pll{i} 'ReferenceSelect:St'], ref_chan);
   ref_sel(i) = lcaGet([prefix, sysgen, pll{i} 'ReferenceSelect:Rd']);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Setting reference chan attn to 0dB
attn_pv1 = [prefix, llrfhw, attn{ref_chan+1}, ':SetValue:St'];
lcaPut(attn_pv1, 63)

% Call Mitch's LLRF setup script
% Script will not keep going if setup_err returns 1
% If you wish to bypass this, please change setup_err_bypass to 1
setup_err = llrf_cards(prefix);
if (setup_err & ~setup_err_bypass)
    disp('One of the PLL could not lock');
    return
end

lcaPut([prefix, sysgen, RF_DAC_I], 000);
lcaPut([prefix, sysgen, RF_DAC_Q], 000);

lcaPut([prefix, sysgen, output_en], 0)
lcaPut([prefix, sysgen, cw_en], 0);
lcaPut([prefix, sysgen, output_en], 1);
lcaPut([prefix, sysgen, cw_en], 1);

RF_DAC_attn =  0; % Attenuator value in dB
for i=1:6
    attn_pv1 = [prefix, llrfhw, attn{end-(i-1)}, ':SetValue:St'];
    lcaPut(attn_pv1, attn_key((RF_DAC_attn/0.5)+1));
    % pause(0.1)
end
% RAW ADC channel select
% channel 0-5 are Bay0 ADC
% channel 6-11 are Bay1 ADC
% Channel 9 is the DAC monitor ADC
% Channel 10-11 are DC coupled.  
% Channel 12 is HS DAC output
channel = [7 8 9 10 11 12];
for i = 0:5
    lcaPut([prefix, sysgen, sprintf('debugStream%iSelect:St', i)], channel(i+1));
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for j = 1:run_times
    for i = 1:step_time
        if j <= 2
            if mod(j,2)
                DAC_sign = -1;
            else
                DAC_sign = 1;
            end
            DAC_val = DAC_sign*(2^(i));  % Output starting with 2^1 to the 2^15
            DAC_out_ary(j,i) = DAC_val;
            lcaPut([prefix, sysgen, RF_DAC_I], DAC_val);
            lcaPut([prefix, sysgen, RF_DAC_Q], 000);
            disp(['I = ' num2str(DAC_val)])
            disp(['Q = ' num2str(0)])
            pause(pause_time)
        else
            if mod(j,2)
                DAC_sign = -1;
            else
                DAC_sign = 1;
            end
            DAC_val = DAC_sign*(2^(i));
            DAC_out_ary(j,i) = DAC_val;
            lcaPut([prefix, sysgen, RF_DAC_I], 000);
            lcaPut([prefix, sysgen, RF_DAC_Q], DAC_val);
            disp(['I = ' num2str(0)])
            disp(['Q = ' num2str(DAC_val)])
            pause(pause_time)
        end

        lcaPut([prefix, sprintf(daqmux,0), 'TriggerDaq:Ex'], 1)
        
        [raw_adc amp phase] = getRfData(prefix);
        % raw_t = [1:size(raw_adc,1)]./(357);
        % pa_t  = [1:size(amp,1)]./(357/20);

        raw_adc = raw_adc(50:end,:);  % Trimming off the first 50 sample, they are timing information
        adc_amp = (max(raw_adc) - min(raw_adc))./2;
        RF_DAC_rb(j,i) = adc_amp(find(channel == RF_rb_chan));
        RF_Mon_rb(j,i) = adc_amp(find(channel == RF_mon_rb_chan));
        FPGA_DAC_rb(j,i) = adc_amp(find(channel == FPGA_rb_chan));
        [sample_n chan] = size(raw_adc);
        disp(' ')
    end
end

for i = 1:run_times
    lin_fit(i,:) = polyfit(DAC_out_ary(i,:), RF_DAC_rb(i,:), 2);
    if(lin_fit(i,1) < 1e-6)
        RF_pass(i,1) = 1;
    end
end

RF_pass

figure()
for i = 1:2
    plot(DAC_out_ary(i,:), RF_Mon_rb(i,:), '+')
    grid on; hold on
end
title('RF monitor readback RF DAC sweep for I axis')
xlim([-1*(2^15) 2^15])
ylim([0 2^15])
hold off

figure()
for i = 3:4
    plot(DAC_out_ary(i,:), RF_Mon_rb(i,:), '+')
    grid on; hold on
end
title('RF monitor readback RF DAC sweep for Q axis')
xlim([-1*(2^15) 2^15])
ylim([0 2^15])
hold off

figure()
for i = 1:2
    plot(DAC_out_ary(i,:), RF_DAC_rb(i,:), '+')
    grid on; hold on
end
title('ADC readback RF DAC sweep for I axis')
xlim([-1*(2^15) 2^15])
ylim([0 2^15])
hold off

figure()
for i = 3:4
    plot(DAC_out_ary(i,:), RF_DAC_rb(i,:), '+')
    grid on; hold on
end
title('ADC readback RF DAC sweep for Q axis')
xlim([-1*(2^15) 2^15])
ylim([0 2^15])
hold off

% figure()
% for x = 1:chan
%     subplot(2,3,x);
%     plot(raw_adc(:,x))
%     % title(['Raw signal from adc ' (FP_label(channel(i)+1))])
%     grid on
% end