// This is the unpowered netlist.
module user_project_wrapper (user_clock2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oenb,
    user_irq,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [63:0] la_data_in;
 output [63:0] la_data_out;
 input [63:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire _26_;
 wire _27_;
 wire _28_;
 wire _29_;
 wire _30_;
 wire _31_;
 wire _32_;
 wire _33_;

 cntr_example cntr_example_1 (.wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),
    .io_out({_26_,
    _25_,
    _24_,
    _23_,
    _21_,
    _20_,
    _19_,
    _18_,
    _17_,
    _16_,
    _15_,
    _14_,
    _13_,
    _12_,
    _10_,
    _09_,
    _08_,
    _07_,
    _06_,
    _05_,
    _04_,
    _03_,
    _02_,
    _01_,
    _33_,
    _32_,
    _31_,
    _30_,
    _29_,
    _28_,
    _27_,
    _22_,
    _11_,
    _00_,
    io_out[3],
    io_out[2],
    io_out[1],
    io_out[0]}));
endmodule

