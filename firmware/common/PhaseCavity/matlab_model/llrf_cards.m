%% addpath('/afs/slac/g/lcls/epics/extensions/extensions-R3.15.5/bin/rhel6-x86_64/labca')

%% PV list
function [err] = llrf_cards(prefix)

%prefix   = 'B084RF:'; % Mitch's LLRF lib setup
% prefix   = 'SIOC:B84:PC01:';
jesd     = 'AT:ATJ%i:JR:';
daqmux   = 'AT:DM%i:';
wave_eng = 'ACC:ACBsa:BWE%i:Wf:';
sysgen   = 'AT:AC:SMR:';

err = 0;

disp(' ')
disp(' ')
disp(' ')

% load config (only do once at bootup)
% load config file is defined by ${PREFIX}:loadConfigFile PV, set in st.cmd 
% lcaPut( [prefix, 'loadConfig'], 1)

% Reference select PVs for clockPll, adPll, loPll
% The channel selection follows
% channel 0-5 are Bay0 ADC
% channel 6-11 are Bay1 ADC
% Channel 10-11 are DC coupled (do not use for reference)
% Channel 12 is HS DAC output
% ref_chan = 1;
pll = {'adPll', 'loPll', 'clockPll'};
ref_sel = zeros(3,1);
for i = 1:3
   % lcaPut([prefix, sysgen, pll{i} 'ReferenceSelect:St'], ref_chan);
   ref_sel(i) = lcaGet([prefix, sysgen, pll{i} 'ReferenceSelect:Rd']);
end


% check ADC status
for i = 0:1
   lcaPut( [prefix, sprintf(jesd, i), 'DataValid:Rd.PROC'], 1 );
   adcValid(:,i+1) = lcaGet( [prefix, sprintf(jesd, i), 'DataValid:Rd'] );
end
if (adcValid(1:6,:) ~= ones(6,2))
    disp('ADC not valid')
end

% check SYSGEN status, PLL should be locked
pll = {'adPll', 'loPll', 'clockPll'};
for i = 1:3
   lcaPut( [prefix, sysgen, pll{i}, 'Locked:Rd.PROC'], 1);
   pause(0.5)
   locked = lcaGet( [prefix, sysgen, pll{i}, 'Locked:Rd'] );
   if locked ~= 1
      lcaPut( [prefix, sysgen, pll{i}, 'LossOfSignal:Rd.PROC'], 1 );
      lossOfSignal = lcaGet( [prefix, sysgen, pll{i}, 'LossOfSignal:Rd'] );
      if lossOfSignal == 1
         disp( [pll{i}, ' loss of signal'] ) 
      end
      err = 1;
   else
      lcaPut( [prefix, sysgen, pll{i}, 'Amplitude:Rd.PROC'], 1 );
      amplitude = lcaGet( [prefix, sysgen, pll{i}, 'Amplitude:Rd'] );
      lcaPut( [prefix, sysgen, pll{i}, 'Phase:Rd.PROC'], 1 );
      phase = lcaGet( [prefix, sysgen, pll{i}, 'Phase:Rd'] );
      disp( [pll{i}, ' locked'])
      disp( ['    Amplitude (normalized) ', num2str(double(amplitude)*2^-15)] )
      disp( ['    Phase (degree) ', num2str(double(phase)*180*2^-15)] )
   end
end

% Set SYSGEN digital LO for downmix
%     0 selects fixed 5/21 sinetable
%     1 selects ADPLL
lcaPut( [prefix, sysgen, 'ddcLoSelect:St'], 0 );



% Setup DaqMux and waveform engine
% DaqMux writes to waveform engine in 32-bit words (2 ADC samples concat)
% Waveform engine writes to DDR, must be in 4k byte blocks.  Size set in
%   bytes (start addr, end addr for each channel)
n_samples = 10000;

% EPICS interface supports up to 5e6 32 bit samples
if n_samples > 5e6
    n_samples = 5e6;
end

% DDR writes must be in 4k blocks, n_samples 32-bit, 1024 samples = 4k byte
n_daq     = n_samples - mod(n_samples,1024); 

% Setup non overlapping start/end addresses for each stream
start_addr(:,1) = [hex2dec('00000000') hex2dec('10000000') hex2dec('20000000') hex2dec('30000000')]';
start_addr(:,2) = [hex2dec('40000000') hex2dec('50000000') hex2dec('60000000') hex2dec('70000000')]';
end_addr   = start_addr + 4*n_daq;

% Setup waveform engine and DaqMux for each bay
% Start/end address, DaqMux number of samples, initialize
for i = 0:1
   lcaPut([prefix, sprintf(wave_eng, i), 'StartAddr:St'], start_addr(:,i+1)')
   lcaPut([prefix, sprintf(wave_eng, i), 'EndAddr:St'], end_addr(:,i+1)');
   lcaPut([prefix, sprintf(daqmux, i),   'DataBufferSize:St'], n_daq);
   lcaPut([prefix, sprintf(wave_eng, i), 'Initialize:Ex'], 1);
end

% % RAW ADC channel select
% % channel 0-5 are Bay0 ADC
% % channel 6-11 are Bay1 ADC
% % Channel 10-11 are DC coupled.  
% % Channel 12 is HS DAC output
% channel = [0 1 7 8 9 12];
% for i = 0:5
%    lcaPut([prefix, sysgen, sprintf('debugStream%iSelect:St', i)], channel(i+1));
% end


% % trigger DAQ, DaqMux triggers are tied together in FW, only need to
% %    trigger a single bay
% lcaPut([prefix, sprintf(daqmux,0), 'TriggerDaq:Ex'], 1)
% %%
% close all
% % Get data from Streams [prefix, 'Stream%i']
% [raw amp phase] = getRfData('SIOC:B84:PC01');
% raw_t = [1:size(raw,1)]./(357);
% pa_t  = [1:size(amp,1)]./(357/20);

% figure; plot(raw_t, raw(:,9))
% title('Raw ADC'); xlabel('Time (us)'); ylabel('ADC counts')

% figure; plot(pa_t, amp(:,1), pa_t, amp(:,2));
% title('Channel Amplitude'); xlabel('Time (us)'); ylabel('Normalized Amplitude')

% figure; plot(pa_t, phase(:,1), pa_t, phase(:,2)); 
% title('Channel Phase'); xlabel('Time (us)'); ylabel('Phase (degree)')
