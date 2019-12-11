function T = llrf_demod_types(dt)
  switch dt
      case 'double'
          T.x     = double([]);
          T.coeff = double([]);
          T.cic   = double([]);
          T.y     = double([]);
      case 'fixed'
          T.x     = fi([], true, 16, 15);
          T.coeff = fi([], true, 18, 16);
          T.cic   = fi([], true, 32, 13);
          T.cic.SumMode            = 'SpecifyPrecision';
          T.cic.SumWordLength      = 32;
          T.cic.SumFractionLength  = 13;
          T.cic.OverflowAction     = 'wrap';
          T.y     = fi([], true, 18, 5);
  end
end