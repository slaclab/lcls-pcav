% ####################################################################
% Filename: Slow_DAC_test.m
% Author: Chengcheng Xu (charliex@slac.stanford.ed)
% Date: 04/26/2019
% ####################################################################
% 5.12V to -4.68V
prefix   = 'SIOC:B84:PC01:';
jesd     = 'AT:ATJ%i:JR:';
daqmux   = 'AT:DM%i:';
wave_eng = 'ACC:ACBsa:BWE%i:Wf:';
sysgen   = 'AT:AC:SMR:';
llrfhw   = 'AT:AC:Llrf';
DAC_PV   = 'DC:Dac2:SetValue:St';
DAC_Dsp  = 'DC:Dac:SelectDspCore:St';  % PV for controlling where the slow DAC gets data from

DAC_bit  = 16;
DAC_Tic_Max  = 2^(DAC_bit);
DAC_Tic_Min  = 0;
DAC_V_Max = 5;
DAC_V_Min = -5;
Tic2V = 5/(DAC_Tic_Max/2);

V_Step = 0.2;
V_linspa = linspace(0, 2*pi, ((DAC_V_Max-DAC_V_Min)/V_Step));
V_sin = (((DAC_Tic_Max-DAC_Tic_Min)/2)*sin(V_linspa)+((DAC_Tic_Max-DAC_Tic_Min)/2));

lcaPut([prefix llrfhw DAC_Dsp], 1);
lcaPut([prefix llrfhw DAC_Dsp], 0);
lcaPut([prefix llrfhw DAC_PV], 32000);

i = 0;
while (i<1)
    for j=1:(length(V_sin))
        lcaPut([prefix llrfhw DAC_PV], V_sin(1,j));
        pause(0.2);
        (V_sin(1,j)-(DAC_Tic_Max/2))*Tic2V
    end
end

