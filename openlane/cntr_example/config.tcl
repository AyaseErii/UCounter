# # User config
# set script_dir [file dirname [file normalize [info script]]]

# # name of your project, should also match the name of the top module
# set ::env(DESIGN_NAME) cntr_example

# set ::env(STD_CELL_LIBRARY) "gf180mcu_fd_sc_mcu7t5v0"

# # add your source files here
# #set ::env(VERILOG_FILES) "$::env(DESIGN_DIR)/../../verilog/rtl/wrapped_multiplier.v \
# #set ::env(VERILOG_FILES) "$::env(DESIGN_DIR)/../../verilog/rtl/wrapped_multiplier.v \
# #    $::env(DESIGN_DIR)/../../verilog/rtl/multilib.v"
# set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/../../verilog/rtl/cntr_example.v]

# # set absolute size of the die to 300 x 300 um
# #for two 4-bit counter
# set ::env(DIE_AREA) "0 0 400 400" 
# #set ::env(DIE_AREA) "0 0 1500 1500"
# set ::env(FP_SIZING) absolute

# #for two 4-bit counter
# set ::env(FP_CORE_UTIL) 40 
# #set ::env(FP_CORE_UTIL) 20
# set ::env(PL_TARGET_DENSITY) [ expr ($::env(FP_CORE_UTIL)+5) / 100.0 ]

# # define number of IO pads
# set ::env(SYNTH_DEFINES) "MPRJ_IO_PADS=38"

# # clock period is ns
# # need 40MHz for VGA out = 25ns
# # copied from VGA example
# # for two 4-bit counter
# set ::env(CLOCK_PERIOD) "30" 
# #set ::env(CLOCK_PERIOD) "65"
# set ::env(CLOCK_PORT) "wb_clk_i"
# #set ::env(CLOCK_PORT) "clk"

# # macro needs to work inside Caravel, so can't be core and can't use metal 5
# set ::env(DESIGN_IS_CORE) 0
# set ::env(RT_MAX_LAYER) {Metal4}

# # define power straps so the macro works inside Caravel's PDN
# set ::env(VDD_NETS) [list {vdd}]
# set ::env(GND_NETS) [list {vss}]

# # regular pin order seems to help with aggregating all the macros for the group project
# #set ::env(FP_PIN_ORDER_CFG) $script_dir/pin_order.cfg

# set ::env(FP_IO_VTHICKNESS_MULT) 4
# set ::env(FP_IO_HTHICKNESS_MULT) 4

set ::env(PDK) "gf180mcuC"
set ::env(STD_CELL_LIBRARY) "gf180mcu_fd_sc_mcu7t5v0"

set ::env(DESIGN_NAME) cntr_example

set ::env(VERILOG_FILES) "\
	$::env(CARAVEL_ROOT)/verilog/rtl/defines.v \
	$::env(DESIGN_DIR)/../../verilog/rtl/cntr_example.v"

set ::env(DESIGN_IS_CORE) 0

set ::env(CLOCK_PORT) "wb_clk_i"
set ::env(CLOCK_NET) "cntr.clk"
set ::env(CLOCK_PERIOD) "24.0"

set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 900 600"

set ::env(FP_PIN_ORDER_CFG) $::env(DESIGN_DIR)/pin_order.cfg

set ::env(PL_BASIC_PLACEMENT) 0
set ::env(PL_TARGET_DENSITY) 0.45

set ::env(FP_CORE_UTIL) 40

set ::env(SYNTH_MAX_FANOUT) 4

# Maximum layer used for routing is metal 4.
# This is because this macro will be inserted in a top level (user_project_wrapper) 
# where the PDN is planned on metal 5. So, to avoid having shorts between routes
# in this macro and the top level metal 5 stripes, we have to restrict routes to metal4.  
# 
set ::env(RT_MAX_LAYER) {Metal4}

# You can draw more power domains if you need to 
set ::env(VDD_NETS) [list {vdd}]
set ::env(GND_NETS) [list {vss}]

set ::env(DIODE_INSERTION_STRATEGY) 4 
# If you're going to use multiple power domains, then disable cvc run.
set ::env(RUN_CVC) 1