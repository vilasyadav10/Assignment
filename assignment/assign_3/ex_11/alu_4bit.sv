module alu_4bit(
    input [3:0] A, B,
    input [2:0] S,
    output reg [3:0] Y
    );
    
    always@(*) begin
       case( S ) 
          3'b000: begin
            Y = A + B;
            end
          3'b001: begin
            Y = A - B;
            end
          3'b010: begin
            Y = A & B;
            end  
          3'b011: begin
            Y = A | B;
            end
          3'b100: begin
            Y = A ^ B;
            end
          3'b101: begin
            Y = A <<1;
            end
          3'b110: begin
            Y = A >>1;
            end
          3'b111: begin
            Y = A > B;
            end
          default begin
            Y = 4'bxxxx;
            end  
        endcase
    end
endmodule
