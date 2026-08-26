module all_op(
  input [7:0] a,b,
  input [1:0] op,
  input [2:0] al_op, 
  input [2:0] bit_op,
  input [1:0] other_op,
  output reg [15:0] y
 );

     always@(*) begin
        if(op == 2'b00) begin
           case (al_op)
              3'b000: begin
                 y = a + b;               //sum 
                 end
              3'b001: begin
                 y = a - b;             // difference
                 end
              3'b010: begin
                 y = a * b;            // multiplication
                 end
              3'b011: begin
                 y = a / b;            // division
                 end
              3'b100: begin
                 y = a % b;            // remiander
                 end
              3'b101: begin
                 y = a && b;          // logical and 
                 end
              3'b110: begin
                 y = a || b;          // logical or 
                 end
              3'b111: begin 
                 y = !a;             // logical not 
                 end
              default: begin
                y = 0;
                 end
           endcase
        end
             
       else if(op == 2'b01) begin
           case(bit_op)
                
                3'b000: begin
                       y = a & b;             // bitwise and
                  end
                3'b001: begin 
                    y = a | b; 
                    end             // bitwise or
                3'b010: begin
                    y = a ^ b;              // bitwise xor
                   end
                3'b011: begin
                    y = ~a;             // bitwise not
                   end
                3'b100: begin
                     y = &a;             // reduction and
                   end
                3'b101: begin
                    y = |a;          // reduction or
                   end
                3'b110: begin
                    y = ^a;             // reduction xor
                   end
                default: begin
                y = 0;

                 end
           endcase
       end    
           
      else if(op == 2'b10) begin
             case(other_op) 
             
                2'b00: begin
                   y = a << 1;             // left shift
                   end
                2'b01: begin
                   y = a >> 1;            // right shift
                   end
                2'b10: begin
                   y = { a [3:0]  , b [3:0] };      // concatenate
                   end   
                2'b11: begin
                   y = (a > b) ? a : b;           // ternary
                   end
                default: begin
                   y = 0;
                   end 
              endcase
        end
        
       else begin 
         y = 0;
        end    
    end 
 endmodule  
