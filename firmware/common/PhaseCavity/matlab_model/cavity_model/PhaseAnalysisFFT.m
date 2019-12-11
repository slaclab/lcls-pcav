% start with phase cavity data in array pcdata(Nshots,4096)
[Nshots,lpc]=size(pcdata)
format compact

bopt=bodeoptions; bopt.FreqUnits='Hz'; bopt.FreqScale='linear';
Fs=119e6; % sample clock frequency 
N = 1024;  % number of samples per cavity
n = 1:N; f= (n-1)/N*Fs;  % frequency scale
Noffset = 256; %use first Noffset ADC values to remove DC offset

%resolve into 3D array, pcads(1024,Nshots,4), final index is which cavity
pcadcs=zeros(N, Nshots, 4);
for j=1:Nshots,  
    for k=1:4,
        pcadcs(1:N,j,k)= pcdata(j,((k-1)*N+1):(k*N));
        pcadcs(:,j,k) = pcadcs(:,j,k) - mean(pcadcs(1:Noffset));
    end;
end;

%Flo=49e6; Fhi=53e6;   % Define analysis bandwidth
%Flo=50e6; Fhi=52e6;   % Define analysis bandwidth
Flo=50.3e6; Fhi=51.6e6;   % Define analysis bandwidth
filtr = find(and(f>=Flo, f<= Fhi));
PC=0;
fadcs = fft(pcadcs);
for cav=1:4,
    %take first AVERAGE of first 25 waveforms as prototype for time response and defininition of phi=0
    %fproto = squeeze(fadcs(:,1,cav),2); % first waveform is prototype
    Navg=25; %average over 25 waveforms
    fproto = sum(fadcs(:,1:Navg,cav),2)/Navg;
    rephase=zeros(1,1024); rephase(filtr) = fproto(filtr)'  ./ abs(fproto(filtr))';
    %figure(5);subplot(2,1,1);plot(f(filtr),abs(fproto(filtr)));grid,
    %subplot(2,1,2),plot(f(filtr),angle(rephase(filtr)));grid

    for m=1:Nshots
        PC(m,cav) = rephase * fadcs(:,m,cav);
    end
end
dt = angle(PC)/2/pi/2805e6 * 1e12; %dt in picoseconds
dt12 = std(dt(:,1)-dt(:,2)), dt13 = std(dt(:,1)-dt(:,3))
dt14 = std(dt(:,1)-dt(:,4)), dt23 = std(dt(:,2)-dt(:,3))
dt24 = std(dt(:,2)-dt(:,4)), dt34 = std(dt(:,3)-dt(:,4))
charge = abs(PC);

%find frequency errors
% frist DDC
Fnominal = 51e6;
dF1=-62903  %cavity1 frequency offset in Hz
dF2= -9425 %cavity 2
F1 = Fnominal  + dF1
F2 = Fnominal + dF2
DLO1 = exp(2*pi*i*F1/119e6*(0:1023));
DLO2 = exp(2*pi*i*F2/119e6*(0:1023));

%FIR = conv([1 1 1 1 1 1 1 1 1 1 1 1]/12, [1 2 3 4 5 6 7 7 6 5 4 3 2 1]/7/8); % "12,8,7" filter
%FIR = conv(conv([1 2 3 4 5 6 7 8 9 10 11 12 12 12 11 10 9 8 7 6 5 4 3 2 1]/12/14,[1 1 1 1 1 1 1 1 1 1]/10),[1 2 3 4 5 6 7 7 6 5 4 3 2 1]/8/7); % "14,12,10,8,7" filter
%FIR = conv(conv([1 2 3 4 5 6 7 8 9 10 11 12 13 14 13 12 11 10 9 8 7 6 5 4 3 2 1]/14/14,[1 1 1 1 1 1 1 1 1 1]/10), conv([1 1 1 1 1 1 1 1]/8, [1 2 3 4 5 6 7 6 5 4 3 2 1]/7/7)); % "12,12,10,8,7,7" filter
FIR=conv([1 2 3 4 5 6 7 8 9 10 11 12 13 14 13 12 11 10 9 8 7 6 5 4 3 2 1]/14/14, conv([1 1 1 1 1 1 1 1 1 1 1 1]/12,[1 2 3 4 5 6 7 8 8 8 7 6 5 4 3 2 1]/10/8)); %14,14,12,10,8
%FIR=conv([1 2 3 4 5 6 7 8 9 10 11 12 13 14 13 12 11 10 9 8 7 6 5 4 3 2 1]/14/14, conv([1 ,[1 2 3 4 5 6 6 6 6 6 5 4 3 2 1]/10/6)); %14,14,10,6
fir=FIR;fir(1024)=0;fFIR=conj(fft(fir));
DDC1=zeros(1024,Nshots);DDC2=DDC1;DDC3=DDC1;DDC4=DDC1;  
for shot=1:Nshots
  %  DDC1(:,shot) = filter(FIR,1,real(DLO1'.*pcadcs(:,shot,1))) + 1i*filter(FIR,1,imag(DLO1'.*pcadcs(:,shot,1)));  DDC1 = DDC1(1:1024,:);
  %  DDC2(:,shot) = filter(FIR,1,real(DLO2'.*pcadcs(:,shot,2))) + 1i*filter(FIR,1,imag(DLO2'.*pcadcs(:,shot,2)));  DDC2 = DDC2(1:1024,:);
  %  DDC3(:,shot) = filter(FIR,1,real(DLO1'.*pcadcs(:,shot,3))) + 1i*filter(FIR,1,imag(DLO1'.*pcadcs(:,shot,3)));  DDC3 = DDC3(1:1024,:);
  %  DDC4(:,shot) = filter(FIR,1,real(DLO2'.*pcadcs(:,shot,4))) + 1i*filter(FIR,1,imag(DLO2'.*pcadcs(:,shot,4)));  DDC4 = DDC4(1:1024,:);

    ddc1=ifft(fFIR.*fft(DLO1.*pcadcs(:,shot,1)')); DDC1(:,shot)=ddc1;
    ddc1=ifft(fFIR.*fft(DLO2.*pcadcs(:,shot,2)')); DDC2(:,shot)=ddc1;
    ddc1=ifft(fFIR.*fft(DLO1.*pcadcs(:,shot,3)')); DDC3(:,shot)=ddc1;
    ddc1=ifft(fFIR.*fft(DLO2.*pcadcs(:,shot,4)')); DDC4(:,shot)=ddc1;
   
    if mod(shot,2000)==0, shot, end
end


figure(6);subplot(2,1,1);plot(abs(DDC1)); grid; subplot(2,1,2);plot(angle(DDC1)/pi);grid

fitrange=350:560; %was 350:550 for 12,10,8,7,7 filter
fitrange=300:540;  %revised for FFT algorithm NOT delaying signal by 27 samples
tic;
for shot=1:Nshots
    domega = polyfit(fitrange',unwrap(angle(DDC1(fitrange,shot))),1);
    deltaF1(shot)=domega(1)*119e6/2/pi;
    domega = polyfit(fitrange',unwrap(angle(DDC2(fitrange,shot))),1);
    deltaF2(shot)=domega(1)*119e6/2/pi;
    domega = polyfit(fitrange',unwrap(angle(DDC3(fitrange,shot))),1);
    deltaF3(shot)=domega(1)*119e6/2/pi;
    domega = polyfit(fitrange',unwrap(angle(DDC4(fitrange,shot))),1);
    deltaF4(shot)=domega(1)*119e6/2/pi;
    if mod(shot,1000)==0, shot, end
end
toc
errorF1 = mean(deltaF1)
errorF2 = mean(deltaF2)
errorF3 = mean(deltaF3)
errorF4 = mean(deltaF4)
(errorF1+errorF3)/2
(errorF2+errorF4)/2