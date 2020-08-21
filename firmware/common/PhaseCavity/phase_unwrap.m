function [d_phi, state] = phase_unwrap(phase_in, sign_bit, sign_bit_p)
phase_old = 0;
d_phi = 0;
% pie = xfix({xlSigned, 18, 15, xlRound, xlWrap}, (2*3.1415926))

if sign_bit == sign_bit_p
    d_phi = phase_old - phase_in;
    state = 1;
else
    state = 0;
end
