///////////////////////////////////////////////////////////////////////////////
// File:        cfs_algn_test_base.sv
// Author:      Om
// Date:        27 March 2025
// Description: Basic test class. It creates the instance of the environment.
//              This class should be the parent of all the tests used in the
//              verification of the Aligner.
///////////////////////////////////////////////////////////////////////////////
`ifndef CFS_ALGN_TEST_BASE_SV
  `define CFS_ALGN_TEST_BASE_SV

  class cfs_algn_test_base extends uvm_test;
    
    //Environment instance
    cfs_algn_env env;

    `uvm_component_utils(cfs_algn_test_base)
    
    function new(string name = "", uvm_component parent);
      super.new(name, parent);
    endfunction
    
    virtual function void build_phase(uvm_phase phase);
      super.build_phase(phase);
      
      env = cfs_algn_env::type_id::create("env", this);
    endfunction
    
  endclass

`endif
