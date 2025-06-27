///////////////////////////////////////////////////////////////////////////////
// File:        cfs_algn_test_pkg.sv
// Author:      Om
// Date:        27 March 2025
// Description: Test package.
///////////////////////////////////////////////////////////////////////////////
`ifndef CFS_ALGN_TEST_PKG_SV
  `define CFS_ALGN_TEST_PKG_SV

  `include "uvm_macros.svh"
  `include "cfs_algn_pkg.sv"

  package cfs_algn_test_pkg;
    import uvm_pkg::*;
    import cfs_algn_pkg::*;

    `include "cfs_algn_test_base.sv"
    `include "cfs_algn_test_reg_access.sv"

  endpackage

`endif
