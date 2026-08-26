primitive xor_udp( Y, A, B);
 input A, B;
 output Y;
    
    
    
    table 
   //A   B   Y//
     0   0 : 0;
     0   1 : 1;
     1   0 : 1;
     1   1 : 0;
    endtable
    
endprimitive    
