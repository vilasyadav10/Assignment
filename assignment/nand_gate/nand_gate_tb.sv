module nand_gate_tb();
 reg a,b;
 wire y;
nand_gate dut (.a(a), .b(b), .y(y));
initial begin
 a=0; b=0;
 #5 a=0; b=1;
 #5 a=1; b=0;
 #5 a=1; b=1;
 #5 $finish;
 end
initial begin
$monitor($time,"a=%b,b=%b,y=%b",a,b,y);end
endmodule
