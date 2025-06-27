///////////////////////////////////////////////////////////////////////////////
// File:        cfs_algn_pkg.sv
// Author:      Om
// Date:        27 March 2025
// Description: Environment package.
///////////////////////////////////////////////////////////////////////////////
`ifndef CFS_ALGN_PKG_SV
  `define CFS_ALGN_PKG_SV

  `include "uvm_macros.svh"

  package cfs_algn_pkg;
    import uvm_pkg::*;

    `include "cfs_algn_env.sv"
  endpackage

`endif
