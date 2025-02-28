// This module implements a baud rate generator that produces a clock tick (tick) at a frequency determined by the provided
// divisor value. The tick signal pulses high for one clock cycle when the internal counter reaches the divisor value, enabling // precise baud rate control for serial communication."

// To set the divisor value:
// v = f/(16*b) - 1
// where v is the divisor value
// f - the system clcok frequency 
// b - the baud rate of the UART

module BAUD_GEN 
( 
input logic clock, reset, 
input logic [16:0] divisor, 
output logic tick 
); 


    //declarations 
    logic [16:0] r_reg; 
    logic [16:0] r_next;


    always_ff @(posedge clock, posedge reset)
        if (reset) 
            r_reg <= 0;
        else
            r_reg <= r_next; 

    // next-state logic
    assign r_next = (r_reg == divisor) ? 0 : r_reg + 1; 
    //output logic 
    assign tick = (r_reg==1);

endmodule
