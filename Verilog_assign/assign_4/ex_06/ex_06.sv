module fsm_seq (
 input in,
 input clk, rst,
 input  coin,
 output reg dispense,
 output reg change
 );
 
 parameter idle = 3'b000,
           five = 3'b001,
           ten  = 3'b010,
           Dispense =3'b011,
           Change = 3'b100;
           
   reg [2:0] c_state, next_state;
   
   always@( posedge clk or posedge rst ) begin
   if(rst)
     c_state <= idle;
   else 
     c_state <= next_state;
   end
   
   always@(*) begin
   case(c_state)
   
    idle: begin
          case(coin)
          1'b0: next_state = five;
          1'b1: next_state = ten;
          endcase
    end
    
    five: begin
          case(coin)
          1'b0: next_state = ten;
          1'b1: next_state = Dispense;
          endcase
    end
    
    ten: begin
         case(coin)
         1'b0: next_state = Dispense;
         1'b1: next_state = Change;
         endcase
    end
    
    Dispense: begin
            next_state = idle;
    end
    
    Change: begin
            next_state = idle;
    end
    
    default: begin
            next_state = idle;
            end
    endcase
    end
    
    
    always@(*) begin
      case(c_state)
       
        Dispense: begin
          dispense =1'b1;
          change = 1'b0;
          end
        
        Change: begin
          dispense = 1'b1;
          change = 1'b1;
          end
          
        default: begin
         dispense = 1'b0;
         change = 1'b0;
         end
                                    
    endcase
   end
endmodule    
          
