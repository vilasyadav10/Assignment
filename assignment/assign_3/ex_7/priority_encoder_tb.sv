module priority_encoder_tb;
 reg [3:0] d;
 wire [1:0] y;
 wire valid;

 priority_encoder dut( .d(d), .y(y), .valid(valid));

 initial begin
 d = 4'b0000;
 #10;
 d = 4'b0001;
 #10
 d = 4'b001x;
 #10
 d = 4'b01xx;
 #10
 d = 4'b1xxx;
 #10;
 $finish;
 end 
 
 initial begin 
 $monitor("d = %b  y = %b  valid = %d", d, y, valid);
 end
endmodule


