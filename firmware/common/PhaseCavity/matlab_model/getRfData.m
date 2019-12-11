% Filename: getRfData.m
% Date: May 6th 2019
% Changing from the original lcaGet data acqusition to lcaSetMonitor
% This will only acquire data when there is a complete new set of data
function [raw_adc, amplitude, phase] = getRfData( prefix )
   lcaPut( [prefix, 'AT:DM1:DataBufferSize:Rd.PROC'], 1 );
   nelms = lcaGet( [prefix, 'AT:DM1:DataBufferSize:Rd'] );

   % get RAW adc data
   for i = 0:5
      % raw_adc(:,i+1) = lcaGet( [prefix, 'Stream', num2str(i), ':16'], nelms*2 )'; 
      lcaSetMonitor([prefix, 'Stream', num2str(i), ':16'])
   end
   
   for i = 0:5   
      while(~lcaNewMonitorValue([prefix, 'Stream', num2str(i), ':16']))
         a = lcaNewMonitorValue([prefix, 'Stream', num2str(i), ':16']);
         % i
         % a
      end
      raw_adc(:,i+1) = lcaGet([prefix, 'Stream', num2str(i), ':16'], nelms*2)'; 
      lcaClear([prefix, 'Stream', num2str(i), ':16'])
   end

   trim = 50;

   % Stream 6 is amplitude data TMUX,
   array     = lcaGet( [prefix, 'Stream6:32'], nelms );
   % Remove any header
   array     = array(trim:end);

   %  lower 4 bits indicate channel number
   array_ch  = bitand(int32(array(1:10)), 15);
   a         = find( array_ch == 9);

   % Channel 0 is start of frame -> channels go 0-9
   array     = array(a(1)+1:end - mod(length(array)-a(1)-10, 10));
   % reshape and scale
   amplitude = reshape(array, 10, [])'*2^-31;


   % Stream 7 is phase data TMUX, same thing as before
   array     = lcaGet( [prefix, 'Stream7:32'], nelms );
   array     = array(trim:end);
   array_ch  = bitand(int32(array(1:10)), 15);
   a         = find( array_ch == 9);
   array     = array(a(1)+1:end - mod(length(array)-a(1)-10, 10));
   phase     = reshape(array, 10, [])'*180*2^-31;

end