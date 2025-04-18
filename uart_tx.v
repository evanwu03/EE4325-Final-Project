//////////////////////////////////////////////////////////////////////
// Author: Russell Merrick
//////////////////////////////////////////////////////////////////////
// This file contains the UART Transmitter.  This transmitter is able
// to transmit 8 bits of serial data, one start bit, one stop bit,
// and no parity bit.  When transmit is complete o_Tx_done will be
// driven high for one clock cycle.
//
// Set Parameter CLKS_PER_BIT as follows:
// CLKS_PER_BIT = (Frequency of i_Clock)/(Frequency of UART)
// Example: 25 MHz Clock, 115200 baud UART
// (25000000)/(115200) = 217


module UART_TX 
  #(parameter CLKS_PER_BIT = 868) // Set Clock/Bit with our chosen frequency of 25 MHz
  (
   input       i_Rst_L,			// Sets all the inputs and corresponding bits
   input       i_Clock,
   input       i_TX_Valid,
   input [7:0] i_TX_Byte, 
   output reg  o_TX_Busy,
   output reg  o_TX_Serial,
   output reg  o_TX_Done
   );
  
  
  localparam IDLE         = 2'b00;		// Defines the bit placement for every state
  localparam TX_START_BIT = 2'b01;
  localparam TX_DATA_BITS = 2'b10;
  localparam TX_STOP_BIT  = 2'b11;
  
  reg [1:0] r_SM_Main;
  reg [$clog2(CLKS_PER_BIT):0] r_Clock_Count;
  reg [2:0] r_Bit_Index;
  reg [7:0] r_TX_Data;


  // This controls the TX state machine
  always @(posedge i_Clock or negedge i_Rst_L)
  begin
    if (~i_Rst_L) // If Active low reset is triggered
    begin
      r_SM_Main <= IDLE;
      r_Clock_Count <= 0;
      r_Bit_Index <= 0;
      r_TX_Data <= 0; 
      //o_TX_Serial <= 1'b1;
      o_TX_Done <= 1'b0; 
      o_TX_Busy <= 0;
    end
    else
    begin

      o_TX_Done <= 1'b0;
 
      case (r_SM_Main)
      IDLE :
        begin
          o_TX_Serial   <= 1'b1;         // Keeps high (logic 1) for idle state
          r_Clock_Count <= 0;
          r_Bit_Index   <= 0;
          
          if (i_TX_Valid == 1'b1)           // Inititates from the IDLE state
          begin
            o_TX_Busy <= 1'b1;
            r_TX_Data   <= i_TX_Byte;
            r_SM_Main   <= TX_START_BIT;
          end
          else
            r_SM_Main <= IDLE;
        end // case: IDLE
      
      
      // Send out Start Bit. Start bit = 0
      TX_START_BIT :
        begin
          o_TX_Serial <= 1'b0;
          
          // Wait CLKS_PER_BIT-1 clock cycles for start bit to finish
          if (r_Clock_Count < CLKS_PER_BIT-1)
          begin
            r_Clock_Count <= r_Clock_Count + 1;
            r_SM_Main     <= TX_START_BIT;
          end
          else
          begin
            r_Clock_Count <= 0;
            r_SM_Main     <= TX_DATA_BITS;
          end
        end // case: TX_START_BIT
      
      
      // Wait CLKS_PER_BIT-1, clock cycles for data bits to finish         
      TX_DATA_BITS :
        begin
          o_TX_Serial <= r_TX_Data[r_Bit_Index];
          
          if (r_Clock_Count < CLKS_PER_BIT-1)
          begin
            r_Clock_Count <= r_Clock_Count + 1;
            r_SM_Main     <= TX_DATA_BITS;
          end
          else
          begin
            r_Clock_Count <= 0;
            
            // Check if we have sent out all bits
            if (r_Bit_Index < 7)
            begin
              r_Bit_Index <= r_Bit_Index + 1;
              r_SM_Main   <= TX_DATA_BITS;
            end
            else
            begin
              r_Bit_Index <= 0;
              r_SM_Main   <= TX_STOP_BIT;
            end
          end 
        end // case: TX_DATA_BITS
      
      
      // Send out stop bit; Stop bit = 1
      TX_STOP_BIT :
        begin
          o_TX_Serial <= 1'b1;
          
          // Wait CLKS_PER_BIT-1, clock cycles for Stop bit to finish
          if (r_Clock_Count == CLKS_PER_BIT-1)
          begin
            o_TX_Done     <= 1'b1;
            r_Clock_Count <= 0;
            r_SM_Main     <= IDLE;
            o_TX_Busy   <= 1'b0;
          end
          
          else
          begin
            r_Clock_Count <= r_Clock_Count + 1;
            r_SM_Main     <= TX_STOP_BIT;
          end 
        end // case: TX_STOP_BIT      
      
      default :
	begin
        r_SM_Main <= IDLE;
      	end
    endcase
    end // else: !if(~i_Rst_L)
  end // always @ (posedge i_Clock or negedge i_Rst_L)
  
endmodule
