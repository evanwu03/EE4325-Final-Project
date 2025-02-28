
module uart #( 
  parameter c_CLOCK_PERIOD_NS = 10;
  parameter c_CLKS_PER_BIT    = 868;
  parameter c_BIT_PERIOD      = 8600;
  )
  (
  input i_clk, 		// Serial Clock
  input i_tx_dv,			// rx serial input 
  input [7:0] i_tx_byte,
    
  output o_RX_Done, 
  output o_TX_Done, 
  output [7:0] o_RX_Byte
  );

  
  
  UART_RX #(.CLKS_PER_BIT(c_CLKS_PER_BIT)) UART_RX_Inst
    (.i_Clock(r_Clock),
     .i_RX_Serial(w_UART_Line),
     .o_RX_Done(w_RX_DV),
     .o_RX_Byte(w_RX_Byte)
     );
  
  UART_TX #(.CLKS_PER_BIT(c_CLKS_PER_BIT)) UART_TX_Inst
    (.i_Clock(r_Clock),
     .i_TX_DV(r_TX_DV),
     .i_TX_Byte(r_TX_Byte),
     .o_TX_Active(w_TX_Active),
     .o_TX_Serial(w_TX_Serial),
     .o_TX_Done()
     );
  
endmodule