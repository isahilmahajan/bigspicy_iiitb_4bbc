/* Generated by Yosys 0.12+45 (git sha1 UNKNOWN, gcc 8.3.1 -fPIC -Os) */

module iiitb_3bit_rc(clk, ori, count);
  wire _0_;
  wire _1_;
  wire _2_;
  input clk;
  output [2:0] count;
  input ori;
  sky130_fd_sc_hd__inv_2 _3_ (
    .A(ori),
    .Y(_0_)
  );
  sky130_fd_sc_hd__inv_2 _4_ (
    .A(ori),
    .Y(_1_)
  );
  sky130_fd_sc_hd__inv_2 _5_ (
    .A(ori),
    .Y(_2_)
  );
  sky130_fd_sc_hd__dfrtp_1 _6_ (
    .CLK(clk),
    .D(count[1]),
    .Q(count[0]),
    .RESET_B(_0_)
  );
  sky130_fd_sc_hd__dfrtp_1 _7_ (
    .CLK(clk),
    .D(count[2]),
    .Q(count[1]),
    .RESET_B(_1_)
  );
  sky130_fd_sc_hd__dfstp_1 _8_ (
    .CLK(clk),
    .D(count[0]),
    .Q(count[2]),
    .SET_B(_2_)
  );
endmodule