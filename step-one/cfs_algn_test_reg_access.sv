///////////////////////////////////////////////////////////////////////////////
// File:        cfs_algn_test_reg_access.sv
// Author:      Om
// Date:        27 March 2025
// Description: Register access test. It targets APB accesses to the registers
//              of the Aligner module.
///////////////////////////////////////////////////////////////////////////////
`ifndef CFS_ALGN_TEST_REG_ACCESS_SV
  `define CFS_ALGN_TEST_REG_ACCESS_SV

  class cfs_algn_test_reg_access extends cfs_algn_test_base;

    `uvm_component_utils(cfs_algn_test_reg_access)
    
    function new(string name = "", uvm_component parent);
      super.new(name, parent);
    endfunction
    
    virtual task run_phase(uvm_phase phase);
      phase.raise_objection(this, "TEST_DONE");
      
      #(100ns);
      
      `uvm_info("DEBUG", "this is the end of the test", UVM_LOW)
      
      phase.drop_objection(this, "TEST_DONE"); 
    endtask
    
  endclass

`endif
