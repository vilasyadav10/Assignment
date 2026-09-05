module paramaterised_register_tb;

reg clk;
reg reset;
reg [7:0] d;
wire [7:0] q;

parameterised_register #(
    .WIDTH(8),
    .RESET_VALUE(8'b00000010)
) dut (
    .clk(clk),
    .reset(reset),
    .d(d),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;
    d = 8'b00000000;

    #10;
    reset = 0;
    d = 8'b11001100;

    #10;
    d = 8'b11110000;

    #10;
    reset = 1;

    #10;
    reset = 0;
    d = 8'b00110011;

    #10;
    $finish;
end

initial begin
    $monitor("Time = %0t , reset = %b , d = %d , q = %d",
             $time, reset, d, q);
end

endmodule
