///////////////////////////////////////////////////////////////////////////////
// File:        cfs_algn_env.sv
// Author:      Om
// Date:        27 March 2025
// Description: Environment class.
///////////////////////////////////////////////////////////////////////////////
`ifndef CFS_ALGN_ENV_SV
  `define CFS_ALGN_ENV_SV

  class cfs_algn_env extends uvm_env;

    `uvm_component_utils(cfs_algn_env)
    
    function new(string name = "", uvm_component parent);
      super.new(name, parent);
    endfunction
    
  endclass

`endif
