//////////////////////////////////////////////////////////////////////
// File Downloaded from http://www.nandland.com
//////////////////////////////////////////////////////////////////////

// This testbench will exercise the UART RX.
// It sends out byte 0x4F, and ensures the RX receives it correctly.
`timescale 1ns/10ps

//`include "uart.v"

/*
module UART_TB ();

  // Testbench uses a 25 MHz clock
  // Want to interface to 115200 baud UART
  // 25000000 / 115200 = 217 Clocks Per Bit.
  parameter c_CLOCK_PERIOD_NS = 10;
  parameter c_CLKS_PER_BIT    = 868;
  parameter c_BIT_PERIOD      = 8600;

  reg r_Rst_L; 
  reg r_Clock = 0;
  reg r_TX_DV = 0;
  wire w_TX_Active, w_UART_Line;
  wire w_TX_Serial;
  reg [7:0] r_TX_Byte = 0;
  wire [7:0] w_RX_Byte;

  UART_RX #(.CLKS_PER_BIT(c_CLKS_PER_BIT)) UART_RX_Inst
    (
     .i_Rst_L(r_Rst_L),
     .i_Clock(r_Clock),
     .i_RX_Serial(w_UART_Line),
     .o_RX_Done(w_RX_DV),
     .o_RX_Byte(w_RX_Byte)
     );
  
  UART_TX #(.CLKS_PER_BIT(c_CLKS_PER_BIT)) UART_TX_Inst
    (
     .i_Rst_L(r_Rst_L),
     .i_Clock(r_Clock),
     .i_TX_Valid(r_TX_DV),
     .i_TX_Byte(r_TX_Byte),
     .o_TX_Busy(w_TX_Active),
     .o_TX_Serial(w_TX_Serial),
     .o_TX_Done()
     );

  // Keeps the UART Receive input high (default) when
  // UART transmitter is not active
  assign w_UART_Line = w_TX_Active ? w_TX_Serial : 1'b1;
    
  always
    #(c_CLOCK_PERIOD_NS/2) r_Clock <= !r_Clock;
  
  // Main Testing:
  initial
    begin

      r_Rst_L <= 1;
      @(posedge r_Clock);
      r_Rst_L <= 0;
      @(posedge r_Clock);
      r_Rst_L <= 1; 
      // Tell UART to send a command (exercise TX)
      @(posedge r_Clock);
      @(posedge r_Clock);
      r_TX_DV   <= 1'b1;
      r_TX_Byte <= 8'h4F;
      @(posedge r_Clock);
      r_TX_DV <= 1'b0;

      // Check that the correct command was received
      @(posedge w_RX_DV);
      if (w_RX_Byte == 8'h4F) begin
        $display("Test Passed - Correct Byte Received");
      end
      else begin
        $display("Test Failed - Incorrect Byte Received");
      end 
     
      $finish;
    end
  
  initial 
  begin
    // Required to dump signals to EPWave
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
endmodule
*/


module UART_FULL_TB ();
  
  parameter c_CLOCK_PERIOD_NS = 10;
  parameter c_CLKS_PER_BIT    = 868;
  parameter c_BIT_PERIOD      = 8600;
  
  reg r_Clock = 0;
  reg r_TX_DV = 0;
  wire w_TX_Active = 0, w_UART_Line = 0;
  wire w_TX_Serial = 0;
  reg [7:0] r_TX_Byte = 0;
  reg r_Rst_L;
  wire [7:0] w_RX_Byte = 0;
  
  UART #(.c_CLKS_PER_BIT(c_CLKS_PER_BIT)) UART_Inst
  (
    .i_Rst_L(r_Rst_L),
    .i_System_Clock(r_Clock),
    .i_TX_Valid(r_TX_DV),
    .i_TX_Byte(r_TX_Byte),
    .i_RX_Serial(w_UART_Line),
    .o_TX_Busy(w_TX_Active),
    .o_TX_Serial(w_TX_Serial),
    .o_TX_Done(w_TX_Done),
    .o_RX_Done(w_RX_DV),
    .o_RX_Byte(w_RX_Byte)
  );
  
   // Keeps the UART Receive input high (default) when
  // UART transmitter is not active
  assign w_UART_Line = w_TX_Active ? w_TX_Serial : 1'b1;
    
  always
    #(c_CLOCK_PERIOD_NS/2) r_Clock <= !r_Clock;
  
  // Main Testing:
  initial
    begin

      r_Rst_L <= 1;
      @(posedge r_Clock);
      r_Rst_L <= 0;
      @(posedge r_Clock);
      r_Rst_L <= 1; 

      // Tell UART to send a command (exercise TX)
      @(posedge r_Clock);
      @(posedge r_Clock);
      r_TX_DV   <= 1'b1;
      r_TX_Byte <= 8'h4F;
      @(posedge r_Clock);
      r_TX_DV <= 1'b0;

      // Check that the correct command was received
      @(posedge w_RX_DV);
      if (w_RX_Byte == 8'h4F) begin
        $display("Test Passed - Correct Byte Received");
      end
      else begin
        $display("Test Failed - Incorrect Byte Received");
      end
      $finish;
    end
  
  initial 
  begin
    // Required to dump signals to EPWave
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
  
endmodule 


/*
module BAUD_GEN_TB ();
  
  parameter c_CLOCK_PERIOD_NS = 10; //#25 MHz clock period
  
  
  reg r_clock = 0;
  reg r_reset = 0; 
  reg [16:0] r_divisor;
  wire w_tick;

  
  BAUD_GEN BAUD_GEN_INST(
    .clock(r_clock),
    .reset(r_reset),
    .divisor(r_divisor),
    .tick(w_tick)
  );
  
  
  always #(c_CLOCK_PERIOD_NS/2) r_clock <= ~r_clock; 
 // Main testing 
  
  // Task to measure time between ticks
  task measure_ticks;
    integer tick_count = 0;
    integer timeout = 1000;
    time prev_tick_time, curr_tick_time, tick_period;
    
    // Wait for first tick
    @(posedge w_tick);
    prev_tick_time = $time;

    // Measure time between 10 ticks
    repeat (10) begin
      @(posedge w_tick);
      curr_tick_time = $time;
      tick_period = curr_tick_time - prev_tick_time;
      $display("Tick %0d at time %0t ns (Period: %0t ns)", tick_count, curr_tick_time, tick_period);
      prev_tick_time = curr_tick_time;
      tick_count++;
    end
  endtask
  
  
  initial 
    begin 
      $display("Begin Baud generator test...");
       
      // Apply reset
      r_reset <= 1; 
      @(posedge r_clock);
      r_reset <= 0; 
                
               
      // Simulate 115200 baud rate 
      // Send a divsior value of 12 
      r_divisor <= 53; 
      $display("Testing 115200 baud rate...");
      measure_ticks();         
      
      // Test 9600 baud (divisor = 161)
      r_divisor = 650;
      $display("Testing 9600 Baud rate...");
      measure_ticks();
      
      // Test 19200 baud (divisor = 80)
      r_divisor = 324;
      $display("Testing 19200 Baud rate...");
      measure_ticks();
      
      $display("Test Completed");
      $finish;
    end        
     
 initial 
 	begin
    // Required to dump signals to EPWave
    $dumpfile("dump.vcd");
    $dumpvars(0);
 	end
               
endmodule
*/

