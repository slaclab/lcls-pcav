function [I_norm, Q_norm, done, bit] = integration_normalize(I_int, Q_int, I_int_abs, Q_int_abs)
thres = 1;
bit1=2;
bit2=bit1*2;
bit3=bit2*2;
bit4=bit3*2;
bit5=bit4*2;
bit6=bit5*2;
bit7=bit6*2;
bit8=bit7*2;
bit9=bit8*2;
bit10=bit9*2;
I_norm = I_int_abs;
Q_norm = Q_int_abs;
bit = -1;
done = 0;
if (I_norm <= thres) && (Q_norm <= thres)
    I_norm = I_int;
    Q_norm = Q_int;
    bit = 0;
    done = 1; 
elseif (I_norm > bit10) || (Q_norm > bit10)
    I_norm = xl_rsh(I_int, 11);
    Q_norm = xl_rsh(Q_int, 11);        
    bit = 10;
    done = 1; 
elseif ((I_norm > bit9) && (I_norm <= bit10)) || ((Q_norm > bit9) && (Q_norm <= bit10))
    I_norm = xl_rsh(I_int, 10);
    Q_norm = xl_rsh(Q_int, 10);        
    bit = 9;    
    done = 1;     
elseif ((I_norm > bit8) && (I_norm <= bit9)) || ((Q_norm > bit8) && (Q_norm <= bit9))
    I_norm = xl_rsh(I_int, 9);
    Q_norm = xl_rsh(Q_int, 9);        
    bit = 8;    
    done = 1;     
elseif ((I_norm > bit7) && (I_norm <= bit8)) || ((Q_norm > bit7) && (Q_norm <= bit8))
    I_norm = xl_rsh(I_int, 8);
    Q_norm = xl_rsh(Q_int, 8);    
    bit = 7;    
    done = 1; 
elseif ((I_norm > bit6) && (I_norm <= bit7)) || ((Q_norm > bit6) && (Q_norm <= bit7))
    I_norm = xl_rsh(I_int, 7);
    Q_norm = xl_rsh(Q_int, 7);   
    bit = 6;    
    done = 1; 
elseif ((I_norm > bit5) && (I_norm <= bit6)) || ((Q_norm > bit5) && (Q_norm <= bit6))
    I_norm = xl_rsh(I_int, 6);
    Q_norm = xl_rsh(Q_int, 6);        
    bit = 5;
    done = 1; 
elseif ((I_norm > bit4) && (I_norm <= bit5)) || ((Q_norm > bit4) && (Q_norm <= bit5))
    I_norm = xl_rsh(I_int, 5);
    Q_norm = xl_rsh(Q_int, 5);    
    bit = 4;    
    done = 1; 
elseif ((I_norm > bit3) && (I_norm <= bit4)) || ((Q_norm > bit3) && (Q_norm <= bit4))
    I_norm = xl_rsh(I_int, 4);
    Q_norm = xl_rsh(Q_int, 4);    
    bit = 3;
    done = 1; 
elseif ((I_norm > bit2) && (I_norm <= bit3)) || ((Q_norm > bit2) && (Q_norm <= bit3))
    I_norm = xl_rsh(I_int, 3);
    Q_norm = xl_rsh(Q_int, 3);    
    bit = 2;
    done = 1;     
elseif ((I_norm > bit1) && (I_norm <= bit2)) || ((Q_norm > bit1) && (Q_norm <= bit2))
    I_norm = xl_rsh(I_int, 2);
    Q_norm = xl_rsh(Q_int, 2);    
    bit = 2;
    done = 1;         
else
    I_norm = xl_rsh(I_int, 1);
    Q_norm = xl_rsh(Q_int, 1);
    bit = 1;done = 1; 
end
