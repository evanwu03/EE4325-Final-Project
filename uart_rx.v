// EE4325 Intro to VLSI: UART RX behavior verilog 
// implementation 



// Parameters for BAUD rate, clock rate 
/*

The clock is defined by it's frequency or # of clock cycles that 
pass per second (1/t).
Clock period can be found as the reciprocal of frequency (1/frequency) 
Baud rate defines the rate (in bits per second) at which data is received/transmitted. 
Common baud rates are: 9600, 115200

To find the CLKS_PER_BIT parameter use the following formula

parameter CLKS_PER_BIT = clock frequency / baud rate; 

Example: 100MHz clock, 115200 baud rate 

CLKS_PER_BIT = 100 000 000 / 115200 = ~868 clock cycles 

*/


module UART_RX
  #(parameter CLKS_PER_BIT = 868)
  (
  input  i_Clock, 		// Serial Clock
  input  i_RX_Serial,	// rx serial input 
  input  i_Rst_L,
 
  output o_RX_Done,	// Flag pulled high when transmission is finshed 
  output [7:0] o_RX_Byte
);
  
    
    // Define FSM states 
    parameter IDLE = 3'b000;
    parameter RX_START_BIT = 3'b001; 
    parameter RX_DATA_BITS = 3'b010; 
    parameter RX_STOP_BIT = 3'b011; 
    parameter DONE = 3'b100; 
    
    
    // Define registers and variables 
    reg [2:0] r_Bit_Index;// holds index of bits 
    reg [2:0] r_RX_State;
    reg [15:0] r_Clock_Count;
    reg [7:0] r_RX_Byte;
    reg r_RX_Done;
    
    always @(posedge i_Clock or negedge  i_Rst_L)
	if (~i_Rst_L)
	    	begin
		r_Bit_Index <= 0; 
		r_RX_State <= IDLE; 
		r_Clock_Count <= 0;
		r_RX_Byte <= 0;
		r_RX_Done <= 0; 
		end
	else begin 

      
      case (r_RX_State)  
        
        IDLE: 
          begin 
            
            // Reset index, clock count, and done bit
            r_Bit_Index <= 1'b0;
            r_Clock_Count <= 1'b0; 
            r_RX_Done <= 1'b0;  

            // If RX serial is 0 then start bit is received 
            // Else stay in IDLE state, keep looking 

            if (i_RX_Serial == 1'b0) begin 
              r_RX_State <= RX_START_BIT; 
            end else begin 
              r_RX_State <= IDLE; 
            end
            
          end
            
         RX_START_BIT: 
            begin
                // Wait for half a bit period to center data for quality UART sampling
                if (r_Clock_Count < ((CLKS_PER_BIT-1)/2) - 1 ) begin 
                r_Clock_Count <= r_Clock_Count +1; 
                r_RX_State <= RX_START_BIT; 
                end else begin 
                
                  if (i_RX_Serial == 1'b0) begin 
                    r_Clock_Count <= 0; 
                    r_RX_State <= RX_DATA_BITS; 
                end else begin
                    r_RX_State <= IDLE;
                end
                end
            end 
        
        RX_DATA_BITS:
            begin 
                // Wait a clock cycle before reading 
                if (r_Clock_Count < CLKS_PER_BIT-1) begin
                r_Clock_Count <= r_Clock_Count+1;
                r_RX_State <= RX_DATA_BITS; 
                // As long as index < 7 read bit into byte register 
                end else if (r_Bit_Index < 7) begin
                r_Clock_Count <= 0; 					// Reset Clock count
                r_RX_Byte[r_Bit_Index] <= i_RX_Serial;	// Store data
                r_Bit_Index <= r_Bit_Index+1;			// Increment Index
                r_RX_State <= RX_DATA_BITS;				// Stay in RX_DATA_BITS
                // Else prepare to receive stop bit
                end else begin
                r_Bit_Index <= 0;
                r_Clock_Count <= 0;
                r_RX_State <= RX_STOP_BIT;
                end 
                
            end 
                
         RX_STOP_BIT:
            begin
              // Wait a bit period for the STOP bit 
              if (r_Clock_Count < CLKS_PER_BIT-1) begin
                r_Clock_Count <= r_Clock_Count+1; 
                r_RX_State <= RX_STOP_BIT; 
              end else begin 
                r_RX_Done <= 1'b1; 
                r_Clock_Count <= 0; 
                r_RX_State <= DONE;
              end
            end
            
        DONE: 
            begin
              r_RX_Done <= 1'b0;
              r_RX_State <= IDLE;
            end
        default:
            begin
            r_RX_State <= IDLE;
            end
     endcase
     end // end else 
            
  assign o_RX_Done = r_RX_Done;
  assign o_RX_Byte = r_RX_Byte;      
 
endmodule // End of UART_RX Module
