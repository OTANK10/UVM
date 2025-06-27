///////////////////////////////////////////////////////////////////////////////
// File:        testbench.sv
// Author:      Om
// Date:        27 March 2025
// Description: Testbench module. It contains the instance of the DUT and the 
//              logic to start the UVM test and UVM phases.
///////////////////////////////////////////////////////////////////////////////
`include "cfs_algn_test_pkg.sv"

module testbench();
  
  import uvm_pkg::*;
  import cfs_algn_test_pkg::*;
  
  //CLock signal
  reg clk;
  
  //Reset signal - active low
  reg reset_n;
  
  //Clock generator
  initial begin
    clk = 0;
    
    forever begin
      //Generate an 100MHz clock
      clk = #5ns ~clk;
    end
  end
  
  //Initial reset generator
  initial begin
    reset_n = 1;
    
    #6ns;
    
    reset_n = 0;
    
    #30ns;
    reset_n = 1;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    
    //Start UVM test and phases
    run_test("");
  end
  
  //Instantiate the DUT
  cfs_aligner dut(
    .clk(    clk),
    .reset_n(reset_n)
  );
  
  
endmodule
