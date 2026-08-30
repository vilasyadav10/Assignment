module binary_gray_tb;
  reg [3:0] B;
  wire [3:0] G;
  wire p;
  integer i;
  
  
  binary_gray dut(.B(B), .G(G), .p(p));
  
  initial begin
   for(i=0; i<16; i++) begin
     B = i; 
     #10;  
     end
    $finish;
    end
    
    initial begin
    $monitor(" B=%b, G=%b, p=%d", B,G,p);
    end
 endmodule    
