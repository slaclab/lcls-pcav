close all
cic1 = ones(1,21);
cic2 = conv(cic1, cic1);
cic3 = conv(cic1, cic2);
cicGain = sum(cic3)/2; % divide by 2 for I/Q

figure();
freqz(cic3./sum(cic3),1,1024,fs);
title('3rd order CIC');


%% Brickwall highpass
fs = 357;
rp = 0.01;          % Passband
rs = 80;            % Stopband
f = [7.5 8.5];      % cutoff frequencies
a = [0  1];
dev = [10^(-rs/20) (10^(rp/20)-1)/(10^(rp/20)+1) ]; 
[n,fo,ao,w] = firpmord(f,a,dev,fs);

h_hp = firpm(n,fo,ao,w);
figure
freqz(h_hp,1,1024,fs)
title('Brick wall highpass')



%% Decimator image response
downsample = 21;

h_cascade = conv(h, Num);
h_cascade_ds = h_cascade(1:downsample:end)*downsample;

figure
freqz(h_cascade_ds,1,1024,fs/downsample)
title('Decimator image resopnse')


%% Exercise fixed point model, compare to float

T = llrf_demod_types('fixed');
input = 0.8*cos(2*pi*5*(1:1000)/21 + -pi/3);
input = input + 0.01*randn(size(input));
input_fixed = cast(input, 'like', T.x);

[y, scale]  = llrf_demod(input_fixed, T);
y           = double(y)/scale;


Td          = llrf_demod_types('double');
[yd, scale] = llrf_demod(input, Td);
yd           = double(yd)/scale;


figure;
plot(abs(double(y)))
hold on;
plot(abs(yd))
figure;
plot(unwrap(angle(double(y))))
hold on;
plot(unwrap(angle(yd)))

figure;
subplot(2,1,1)
plot(abs(double(y)) - abs(yd))
subplot(2,1,2)
plot(angle(double(y))-angle(yd))
