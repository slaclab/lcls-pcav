% ####################################################################
% Filename: Validate_attn_sweep.m
% Author: Chengcheng Xu (charliex@slac.stanford.ed)
% Date: 03/21/2019
% ####################################################################
% There will be 3 tests performed
% Test 1 - Ref = chan 0, sweep chan 1, 2, 3
% Test 2 - Ref = chan 3, sweep chan 0, 4, 5
% Test 3 - Ref = chan 0, sweep chan 6, 7, 8
% ####################################################################
close all
clear all

disp('Welcome to ATCA LLRF card RF DAC testing script')
disp('What is the PC number of the downconverter (i.e. PC_379_396_16_C03_A01)')
P.DC_PC = input('>> ', 's');
disp('What is the downconverter card serial number?')
P.DC_SN = input('>> ', 's');
disp('Enter the PC number of the upconverter (i.e. PC_379_396_17_C02_A01)')
P.UC_PC = input('>> ', 's');
disp('What is the upconverter card serial number?')
P.UC_SN = input('>> ', 's');
% P.DC_PC = 'PC_379_396_16_C03_A01';
% P.DC_SN = '01';
% P.UC_PC = 'PC_379_396_17_C02_A01';
% P.UC_SN = '01';

tmp = strsplit(P.DC_PC, '_');
P.DC_style = tmp(end);
tmp = strsplit(P.UC_PC, '_');
P.UC_style = tmp(end);

% Setup some PV variables
prefix   = 'SIOC:B84:PC01:';
jesd     = 'AT:ATJ%i:JR:';
daqmux   = 'AT:DM%i:';
wave_eng = 'ACC:ACBsa:BWE%i:Wf:';
sysgen   = 'AT:AC:SMR:';
llrfhw   = 'AT:AC:Llrf';
attn     = {'DC:Att1','DC:Att0','DC:Att3','DC:Att2','DC:Att5','DC:Att4','UC:Att1','UC:Att0','UC:Att3','UC:Att2'}; % Attn PV LUT
FP_label = {'DC RF 2','DC RF 1','DC RF 4','DC RF 3','DC RF 6','DC RF 5','UC RF 2','UC RF 1','UC RF 3'}; % LUT for FP to channel
% Attenuator sweep 
% HW attn value LUT
% HMC624A has a inverse high attn value setting 6bit input with 0.5dB step.  0dB - 63, 0.5dB - 62 ... 31.5dB - 0
attn_key = linspace(63,0,64); 
attn_ary = 0:0.5:31.5;

tests = 3;
test_ref = [0 3 3];
test_chans = [1 2 3; 0 4 5; 6 7 8];
UC_thres = 7;
chan_amp = zeros(9, length(attn_ary));
chan_fit_lin = zeros(9, length(attn_ary));
chan_dB_err = zeros(9, length(attn_ary));
attn_dB_pass = zeros(9,1);

setup_err_bypass = 1;
attn_err_thres = 1;    % Actual attenuator to ideal attenuator value error threshold, considers fail if higher than this value

% RAW ADC channel select
% Channel 0 - 5  are Bay0 ADC
% Channel 6 - 11 are Bay1 ADC
% Channel 6 - 8  are RF ADC in Bay 1
% Channel 9 is the RF DAC monitor ADC
% Channel 10 in internal DC ADC
% Channel 11 is external DC ADC
% Channel 12 is RF DAC output FPGA monitor

% Hardware init
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
attn_val =  0;
attn_pv1 = [prefix, llrfhw, attn{ref_chan+1}, ':SetValue:St'];
lcaPut(attn_pv1, attn_key((attn_val/0.5)+1))

% LLRF setup script
% Script will not keep going if setup_err returns 1
% If you wish to bypass this, please change setup_err_bypass to 1
setup_err = llrf_cards(prefix);
if (setup_err & ~setup_err_bypass)
    disp('One of the PLL could not lock');
    return
end

% Start testing the channels
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i = 1:tests
    disp(' ');
    disp(' ');
    disp(['ref chan ' num2str(FP_label{test_ref(i)+1}) ' (' num2str(test_ref(i)+1) 'th channel from the right)'])
    for j = 1:length(test_chans)
        disp(['Test channel ' num2str(FP_label{test_chans(i,j)+1}) ' (' num2str(test_chans(i,j)+1) 'th channel from the right)'])
    end
    input('Press "Enter" after verifying the connection')

    channel = [test_ref(i) test_chans(i,:) 12 12 12]
    for j = 0:5
        lcaPut([prefix, sysgen, sprintf('debugStream%iSelect:St', j)], channel(j+1));
    end
    
    for j = 1:length(test_chans)
        % Only switch the attn for CUT
        attn_pv{j,1} = [prefix, llrfhw, attn{test_chans(i,j)+1}, ':SetValue:St'];
    end

    attn_pv

    for j = 1:1:length(attn_ary)
        attn_ary(j)
        % attn_key(j);
        % attn_pv
        lcaPut(attn_pv, attn_key(j))    % Write the attn value
        
        % Arm the ADC and get data
        lcaPut([prefix, sprintf(daqmux,0), 'TriggerDaq:Ex'], 1)
        [raw_adc amp phase] = getRfData(prefix);
        raw_adc = raw_adc(50:end,:);
        adc_amp = (max(raw_adc) - min(raw_adc))./2
        for k = 1:length(test_chans)
            chan_amp(test_chans(i,k)+1,j) = adc_amp(find(channel == test_chans(i,k)));
            adc_amp(find(channel == test_chans(i,k)))
        end
    end

    % Putting attenuator for CUT back to 0dB attn
    lcaPut(attn_pv, attn_key(find(attn_ary==0)))
end

log_chan_amp = chan_amp;

for i = 1:9
    log_chan_amp(i,:) = 20*log10(chan_amp(i,:)/max(chan_amp(i,:)));
    a = polyfit(attn_ary, log_chan_amp(i,:), 1);
    chan_fit_lin(i,:) = (a(1)*attn_ary) + a(2);
    chan_dB_err(i,:) = log_chan_amp(i,:) + attn_ary;
    if(max(abs(chan_dB_err(i,:)) > attn_err_thres))
        attn_dB_pass(i,1) = 1;
    end
end

figure();
for i = 1:9
    subplot(3, 3, i)
    plot(attn_ary', log_chan_amp(i,:))
    grid on;
    title(['Atten sweep ', (FP_label(i))]); 
    xlabel('Attenuation (dB)'); 
    ylabel('dB relative to 0dB attn (dB)')
end

if attn_dB_pass
    fn_DC = ['Attn_test_' P.DC_PC '_' P.DC_SN '_' datestr(now,'yy_mm_dd_HH_MM_SS') '.txt'];
    file_DC = fopen(fn_DC, 'w+');
    fprintf(file_DC, 'Model, %s\nSN, %s\nDate, %s\n' ...
    , P.DC_PC, P.DC_SN,datestr(now,'yy_mm_dd_HH_MM_SS'));
    fprintf(file_DC, 'Attenuator sweep test pass\n');
    fprintf(file_DC, '%d,', attn_dB_pass(1:UC_thres-1))
    for i = 1:(UC_thres-1)

        fprintf(file_DC, '\nChannel %s\nAttenuator value (dB)\n', FP_label(i));
        fprintf(file_DC, '%d,', attn_ary);
        fprintf(file_DC, '\nActual attenuation (dB)\n');
        fprintf(file_DC, '%d,', log_chan_amp(i,:));
    end
    fclose(file_DC);

    fn_UC = ['Attn_test_' P.UC_PC '_' P.UC_SN '_' datestr(now,'yy_mm_dd_HH_MM_SS') '.txt'];
    file_UC = fopen(fn_UC, 'w+');
    fprintf(file_UC, 'Model, %s\nSN, %s\nDate, %s\n' ...
    , P.UC_PC, P.UC_SN,datestr(now,'yy_mm_dd_HH_MM_SS'));
    fprintf(file_UC, 'Attenuator sweep test pass\n');
    fprintf(file_UC, '%d,', attn_dB_pass((UC_thres):9)
    for i = (UC_thres):9
        fprintf(file_UC, 'Channel %s\nAttenuator value (dB)\n', FP_label(i));
        fprintf(file_UC, '%d,', attn_ary);
        fprintf(file_UC, '\nActual attenuation (dB)\n');
        fprintf(file_UC, '%d,', log_chan_amp(i,:));
    end
    fclose(file_UC);
end