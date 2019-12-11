function [y, scale] = llrf_demod(x,T)
  fif = 2*pi*5/21;
  
  int1  = zeros(size(x), 'like', T.cic);
  int2  = zeros(size(x), 'like', T.cic);
  int3  = zeros(size(x), 'like', T.cic);
  comb1 = zeros(size(x), 'like', T.cic);
  comb2 = zeros(size(x), 'like', T.cic);
  comb3 = zeros(size(x), 'like', T.cic);
  

  cic1 = ones(1,21);
  cic2 = conv(cic1, cic1);
  cic3 = conv(cic1, cic2);
  cicGain = sum(cic3)/2; % divide by 2 for I/Q
  
  bitGrowth = floor(log2(cicGain));

  
  complex_mixer = (2^bitGrowth/cicGain)*exp(1i.*fif.*(1:length(x)));
  complex_mixer = cast(complex_mixer, 'like', T.coeff);
  
  
  downmix       = complex_mixer(:).*x(:);

  for n = 1:length(x)-1
    if n > 1
        int1(n) = int1(n-1) + downmix(n);
        int2(n) = int2(n-1) + int1(n);
        int3(n) = int3(n-1) + int2(n);
    end
    if n > 21
        comb1(n) = int3(n)  - int3(n-21);
        comb2(n) = comb1(n) - comb1(n-21);
        comb3(n) = comb2(n) - comb2(n-21);
    end
  end
  y     = cast(comb3, 'like', T.y);
  scale = 2^bitGrowth;
end