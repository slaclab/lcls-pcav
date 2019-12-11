
% start with phase cavity data in array pcdata(Nshots,4096)
%and timestamps in ts
[Nshots,lpc] = size(pcdata)

Fs=119e6; % sample clock frequency 
N = 1024;  % number of samples per cavity
n = 1:N; f= (n-1)/N*Fs;  % frequency scale
Noffset = 256; %use first Noffset ADC values to remove DC offset
N0 = 320; %set first N0 adc samples to 0, time domain gating

%resolve into 3D array, pcadcs(1024,Nshots,4), final index is which cavity
pcadcs=zeros(N, Nshots, 4);
for j=1:Nshots,  
    for k=1:4,
        pcadcs(1:N,j,k)= pcdata(j,((k-1)*N+1):(k*N));
        pcadcs(:,j,k) = pcadcs(:,j,k) - mean(pcadcs(1:Noffset,j,k));
    end;
end;
pcadcs(1:N0,:,:) = 0; % time-domain gating

adc = squeeze(pcadcs(:,:,1));
%Flo=49e6; Fhi=53e6;   % Define analysis bandwidth
Flo=50.3e6; Fhi=51.6e6;   % Define analysis bandwidth
%Flo=50e6; Fhi=52e6;   % Define analysis bandwidth
filtr = find(and(f>=Flo, f<= Fhi));
PC=0;
fadcs = fft(pcadcs);
for cav=1:4,
    %take first AVERAGE of first 10 waveforms as prototype for time response and defininition of phi=0
    %fproto = squeeze(fadcs(:,1,cav),2); % first waveform is prototype
    Navg=10; %average over 10 waveforms
    fproto = sum(fadcs(:,1:Navg,cav),2)/Navg;
    rephase=zeros(1,1024); rephase(filtr) = fproto(filtr)'  ./ abs(fproto(filtr))';
    %figure(5);subplot(2,1,1);plot(f(filtr),abs(fproto(filtr)));grid,
    %subplot(2,1,2),plot(f(filtr),angle(rephase(filtr)));grid

    for m=1:Nshots
        PC(m,cav) = rephase * fadcs(:,m,cav);
    end
end
dt = angle(PC)/2/pi/2805e6 * 1e12; %dt in picoseconds
charge = abs(PC);


%dt contains arrival times for all 4 cavities
ok=find(charge(:,1)>0.5*mean(charge(:,1))); %remove empty pulses
%ok=find(charge(:,1)>0.0*mean(charge(:,1))); % don't remove empty pulses
%pcadcs = pcadcs(:,ok,:);
pcdata = pcdata(ok,:);
ts=ts(ok);
FID=bitand(imag(ts),hex2dec('1ffff')); % fiducial ID, 
slot= mod(FID,6);   %FID mod 6 is 60 Hz timeslot
%slot= mod(FID,12);   %FID mod 12 is 30 Hz timeslot
s0=find(slot<2.5);
s1=find(slot>2.5&slot<5.5);
s2=find(slot>5.5&slot<8.5);
s3=find(slot>8.5);

dt=dt(ok,:); 
meant  = mean(dt)

%compare cavities to estimate resolution
dt12 = std(dt(:,1)-dt(:,2)), dt13 = std(dt(:,1)-dt(:,3)), dt14 = std(dt(:,1)-dt(:,4))
dt23 = std(dt(:,2)-dt(:,3)), dt24 = std(dt(:,2)-dt(:,4))
dt34 = std(dt(:,3)-dt(:,4))

t0 = mean(dt(s0,:))
t1 = mean(dt(s1,:))
t2 = mean(dt(s2,:))
t3 = mean(dt(s3,:))
timeSlotDifference=t0-t1
rms = std(dt)
rms0 = std(dt(s0,:))
rms1 = std(dt(s1,:))

%Histogram cavity 1
cav=1;
hstep = 0.05;
tmin = hstep*floor(mean(dt(:,cav))-3*std(dt(:,cav)) /hstep);
tmax = hstep*ceil(mean(dt(:,cav))+3*std(dt(:,cav)) /hstep);
edge=tmin:hstep:tmax;
figure(30),subplot(4,1,1)
bar(edge+hstep/2,[histc(squeeze(dt(s0,cav)),edge) histc(squeeze(dt(s1,cav)),edge) histc(squeeze(dt(s2,cav)),edge) histc(squeeze(dt(s3,cav)),edge)]);grid
xlabel('Time (ps)'); ylabel('Occurances')
title('Cavity 1 Arrival Time vs. Timeslot')
ax=axis;  ax(1)=tmin;  ax(2)=tmax;  axis(ax);

%Histogram cavity 2
cav=2;
hstep = 0.05;
tmin = hstep*floor(mean(dt(:,cav))-3*std(dt(:,cav)) /hstep);
tmax = hstep*ceil(mean(dt(:,cav))+3*std(dt(:,cav)) /hstep);
edge=tmin:hstep:tmax;
subplot(4,1,2),bar(edge+hstep/2,[histc(squeeze(dt(s0,cav)),edge) histc(squeeze(dt(s1,cav)),edge) histc(squeeze(dt(s2,cav)),edge) histc(squeeze(dt(s3,cav)),edge)]);grid
xlabel('Time (ps)'); ylabel('Occurances')
title('Cavity  2 Arrival Time vs. Timeslot')
ax=axis;  ax(1)=tmin;  ax(2)=tmax;  axis(ax);

%Histogram cavity 3
cav=3;
hstep = 0.05;
tmin = hstep*floor(mean(dt(:,cav))-3*std(dt(:,cav)) /hstep);
tmax = hstep*ceil(mean(dt(:,cav))+3*std(dt(:,cav)) /hstep);
edge=tmin:hstep:tmax;
subplot(4,1,3),bar(edge+hstep/2,[histc(squeeze(dt(s0,cav)),edge) histc(squeeze(dt(s1,cav)),edge) histc(squeeze(dt(s2,cav)),edge) histc(squeeze(dt(s3,cav)),edge)]);grid
xlabel('Time (ps)'); ylabel('Occurances')
title('Cavity  3 Arrival Time vs. Timeslot')
ax=axis;  ax(1)=tmin;  ax(2)=tmax;  axis(ax);

%Histogram cavity 4
cav=4;
hstep = 0.05;
tmin = hstep*floor(mean(dt(:,cav))-3*std(dt(:,cav)) /hstep);
tmax = hstep*ceil(mean(dt(:,cav))+3*std(dt(:,cav)) /hstep);
edge=tmin:hstep:tmax;
subplot(4,1,4),bar(edge+hstep/2,[histc(squeeze(dt(s0,cav)),edge) histc(squeeze(dt(s1,cav)),edge) histc(squeeze(dt(s2,cav)),edge) histc(squeeze(dt(s3,cav)),edge)]);grid
xlabel('Time (ps)'); ylabel('Occurances')
title('Cavity  4 Arrival Time vs. Timeslot')
ax=axis;  ax(1)=tmin;  ax(2)=tmax;  axis(ax);