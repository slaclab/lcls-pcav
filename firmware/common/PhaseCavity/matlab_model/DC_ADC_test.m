% ####################################################################
% Filename: Validate_DC_ADC.m
% Author: Chengcheng Xu (charliex@slac.stanford.ed)
% Date: 05/06/2019
% ####################################################################
close all
clear all

% RAW ADC channel select
% channel 0-5 are Bay0 ADC
% channel 6-11 are Bay1 ADC
% Channel 9 is the DAC monitor ADC
% Channel 10-11 are DC coupled.  
% Channel 12 is HS DAC output

disp('Welcome to ATCA LLRF card DC ADC testing script')
disp('Make sure reference signal is connected to the 1st port from the right.')
input('Press "Enter" after verifying the reference connection')
disp('')
disp('Connect the DC out (6th from the right) to the DC in port from the right.')
input('Press "Enter" after verifying the reference connection')

% PV Definitions
prefix   = 'SIOC:B84:PC01:';
jesd     = 'AT:ATJ%i:JR:';
daqmux   = 'AT:DM%i:';
wave_eng = 'ACC:ACBsa:BWE%i:Wf:';
sysgen   = 'AT:AC:SMR:';
llrfhw   = 'AT:AC:Llrf';
DAC_PV   = 'DC:Dac2:SetValue:St';
DAC_Dsp  = 'DC:Dac:SelectDspCore:St';  % PV for controlling where the slow DAC gets data from
attn     = {'DC:Att1','DC:Att0','DC:Att3','DC:Att2','DC:Att5','DC:Att4','UC:Att0','UC:Att1','UC:Att2','UC:Att3'}; % Attn PV LUT
FP_label = {'DC RF 2','DC RF 1','DC RF 4','DC RF 3','DC RF 6','DC RF 5','UC RF 2','UC RF 1','UC RF 3'}; % LUT for FP to channel

% Variable value initialization
% HW attn value LUT
% HMC624A has a inverse high attn value setting 6bit input with 0.5dB step.  0dB - 63, 0.5dB - 62 ... 31.5dB - 0
attn_key = linspace(63,0,64); 
attn_ary = 0:0.5:31.5;

Vmax = 5.12;
Vmin = -4.68;
DAC_bit  = 16;
DAC_Tic_Max  = 2^(DAC_bit);
DAC_Tic_Min  = 0;
DAC_V_Max = 1.8;    % Limit to put on the DC DAC because the DC ADC only has +/- 1.8V range
DAC_V_Min = -1.2;
Tic2V = 5/(DAC_Tic_Max/2);
V2Tic = 1/(Tic2V);

V_Step = 0.2;
V_linspa = linspace(DAC_V_Min, DAC_V_Max, ((DAC_V_Max-DAC_V_Min)/V_Step))';
DAC_out_ary = round((V_linspa * V2Tic) + ((DAC_Tic_Max - DAC_Tic_Min)/2), 0);
Sample_pt = length(V_linspa);

DC_ADC_rb = zeros(Sample_pt,1);
DC_rb_chan = 11;

setup_err_bypass = 1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hardware setup before daq

% Reference select PVs for clockPll, adPll, loPll
ref_chan = 0;
pll = {'adPll', 'loPll', 'clockPll'};
ref_sel = zeros(3,1);
for i = 1:3
   lcaPut([prefix, sysgen, pll{i} 'ReferenceSelect:St'], ref_chan);
   ref_sel(i) = lcaGet([prefix, sysgen, pll{i} 'ReferenceSelect:Rd']);
end

% Setting reference chan attn to 0dB
attn_val =  0;
attn_pv1 = [prefix, llrfhw, attn{ref_chan+1}, ':SetValue:St'];
lcaPut(attn_pv1, attn_key((attn_val/0.5)+1))
for i=1:6
    attn_pv1 = [prefix, llrfhw, attn{end-(i-1)}, ':SetValue:St'];
    lcaPut(attn_pv1, attn_key((attn_val/0.5)+1));
end

% Call Mitch's LLRF setup script
% Script will not keep going if setup_err returns 1
% If you wish to bypass this, please change setup_err_bypass to 1
setup_err = llrf_cards(prefix);
if (setup_err & ~setup_err_bypass)
    disp('One of the PLL could not lock');
    return
end

% Change the DC DAC source from DSP core to platform PV.
lcaPut([prefix llrfhw DAC_Dsp], 1);
lcaPut([prefix llrfhw DAC_Dsp], 0);

channel = [7 8 9 10 11 12];
for i = 0:5
    lcaPut([prefix, sysgen, sprintf('debugStream%iSelect:St', i)], channel(i+1));
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Sweep DC DAC and readback DC ADC data
for i = 1:Sample_pt
    disp('')
    disp(['Output DAC voltage ' num2str(V_linspa(i))])
    disp(['Output DAC tik ' num2str(DAC_out_ary(i))])
    disp('')
    lcaPut([prefix llrfhw DAC_PV], DAC_out_ary(i));
    lcaPut([prefix, sprintf(daqmux,0), 'TriggerDaq:Ex'], 1);    
    [raw_adc amp phase] = getRfData(prefix);
    % raw_t = [1:size(raw_adc,1)]./(357);
    % pa_t  = [1:size(amp,1)]./(357/20);
    raw_adc = raw_adc(50:end,:);  % Trimming off the first 50 sample, they are timing information
    [sample_n chan] = size(raw_adc);
    adc_mean = mean(raw_adc);
    DC_ADC_rb(i,1) = adc_mean(find(channel == DC_rb_chan));
end
% Testing if the DC readback is good
a = polyfit(DAC_out_ary, DC_ADC_rb, 2);
if (a(1) < 1e-5)
    test_pass = 1
end

% Putting the DAC back to 0V
lcaPut([prefix llrfhw DAC_PV], 32000);

figure()
plot(DAC_out_ary, DC_ADC_rb, '+')
grid on