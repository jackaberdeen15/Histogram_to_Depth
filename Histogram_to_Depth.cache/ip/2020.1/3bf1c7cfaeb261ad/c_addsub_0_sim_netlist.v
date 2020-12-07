// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Fri Oct 23 17:39:16 2020
// Host        : DESKTOP-1GSCE32 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [15:0]S;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [15:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_14 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "1" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "16" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000000" *) 
(* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "16" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintex7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_14
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [15:0]A;
  input [15:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [15:0]S;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [15:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_14_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
EJFZwtxl4g9/OL6+bopUV8BP4e67HNukCIy7Ih3E75y7soa6GhqEucPXMiOy+mJrcrNwD+HjZ0/I
BwEKIiA4mA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
rZCGWdmPJXoOuANoS8fyUXk7SyF+uTNJL18BfeKc+fxcyRrCB++WrM02adxoUdICz4/92yY8TQgj
xyPC0eaHZcjSLepbnHHgSReIQ1PL0hmufLbye7QTD0ygUXC4MvFVY8s3KeW9cPCqOxkyCSziJQzs
J5OT9XLQno1e9rIBr9M=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I7Zo4frj3tO6FFzeDhpSENS0yd34dQZBtiyIrI/GMASFBUeny6muOD2l0HK69ImRJIOyobvK1+9O
DhxptAc4NzRpY4xUZvr4ix1AhM1Kars1OkrQCWz4a7ciGU/XDblidF3IL0Fa7c41gHIZR9c/Usa6
XL7UEu3aSPQYbZLSDOzeao4VtSSn+dCcjsH4X8zVjSqXg8dcN3fd5C15JaMYg00F2yOFtxwWwZWq
Yvwe1q1PG/wcA1cKAOscANbj4o3O4LjfylNIB6L+Mssxosh+e0+oobWNk/ouBa4k1c3/IzXGSCAs
hEvbI+iqkWJJKZrSb9PZk7S7XSJcScrJO/DGkQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DDRecdVJcCPEpbUqhuwKtKWXteF7XhGc5d+lQn2uiREzbHyuZvQ1wDwAGGrPwE75gjqc7CdHPMOY
8+3nqcEwR4Q5USgQcou3Cyc6C0TnzzDD/dLKPHDWA1s52x8Rx+LBH9WCvBpD5BKkE4o1s3rN1tL2
wTdCqzzKD8YlryKQ4U0lr2bX6Mlf4/nIt2K1eyPKbIrHIvKDThmaIF/qLnLnkE04pksWJ9Af1OVB
46iqBssrR5p6wZc241D4CqSRCRamfP/s1JrTi8bBNCcXhC0f0Aa35UAoG8vnFngHlFd3G2J88cas
Fo7UH4k1BTTfgbQ35ec0XfSbS/qQWS+EgAF+wA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
L11p2bsABDhO9HvT3IM+HulCClFvs/UPexuAVExicKtzrLN7tNvUjSouZSn9KwAjR2hg5ZIJ23uy
1elB+eyEl65vQnoH4+s6Q5K4EIcMo5WVKfIKwgu5Q3Sg/jYW+aWT/kGuc7CazRsTxJ7XPFndpMIM
cxYWx2DLps320t+Be0c=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uublhc2r9VmPPq1tMATsd3XJltn9QRg1/PdCtSlxgFBDDAk13md52Fz+h+DOWptR3Q4i+Sx5IhIP
QIONVNTf1DnoK/wa1lkbd1dROJam8/cZQFiIxnsnSPGXzOGoc0c04xDSCJCCDxiDMF1YTtAqt6nw
yZh1RwOhPpgwUKjeJ4o4TY6/i0xuYAYVc83O6KwI9Ywk9UsfyIQQS8UXFo8zA9eniU2n2NcyAVNj
Y8xZ9PYJfzfDo6dHWsj4Ik588uhfO/bmsf2/ZuY5HCAMQpnda9XzPkVomNjRfsUghko7KipIl2ur
aHh+4i2kI/+cHaihhw3z14aGidBkuYKaopasbA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VYqlyQSuRywWcSrUprXX2UzoaWsJXTTbptzDY9ycgFR91H2uYfY43f80gn0E87Gvj90Qmn0Dl6ck
2VjO2Zn9yATmqtuzi/Etuf29dkl3uyKtk02OitZJEhD1CDyUJHDXKHkPMXOZCBU5CfkrIWw2SsSq
YuQKmvxp4BrhcwXypr+vRSsYd1liMxxuXOdBN5AIyzibGfcR4YUeOokIoP05xZoQOfPQkotMC1B6
SHVKEaBxe37YkyKAkQ0f9eKfnPPLG/G5qeLrFPAiIar0HHpOvdCOO69vi3RG1XqoxtTm/wGwRb5J
ZqzZyTn1Fm55PXyKhlElzXXAv1xPOTbkJXRZNQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EktM4icAEVQRmfzXBBFeRr7d3ZTOU9f+J40sQAiff114nDU+fxlewcv+twlytUk9LMSR67RJlLt4
+ZBTwcuSPZ2Cvrommkp++7rNze0VCD8pSAdj4uo1ZnYWVWmPMQaRIqI88lnAzc5+T/LxEiXKn4ji
AYGs9fja4ME8C0CHbBsg+jfUryleVk1D8jEMCetM7qDx64s/7AGfwzDqMiW2DPCPLKNUsdlOlBYT
JAOnfy6deN7/o7BYxBsE1P4Pib1x1hvR8RwEm38pBOLKGade6KL/1SHmz5N1KGLPSXQXlK53RLTI
Exc4wN04Kg72tf503oGq6Vp90c5pksQ9cc0M+w==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qzYsaSn6YzxyfrxIwv3eyowRK7ZyzZmQHzUmV2AITf6g43c7IV/fwNBDik+XFhLScW2SxsyaGGI7
5n6kAt9uM3GerkCXA+LJQrqshcEyjuvm17vWVovBURqxhTARgZaTs5OtXdhc/wLi5e6lsdyyLtQo
bt66ubjErMgf5+tD8rpn0HkjUYmGv/MBZ0i4bGui735H12aK+wTfhGVOOiuWHCk2zCJJSx3vH4sl
dKtlpg4W0hPEM3TBPHaLnOpIDkrIUaGGN5fm6NJL6US59+Lr8/3mplbD8ld21OKzgLH+5YPRMoo4
1Pbjxkawu5Kk60AsuaR/OxngawaRMd9N4niRfQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LaU6UHO8md1Zs5jOeswPvUZH1+ayGQ8ZxPtRolKLX8qnS7a30OiskONO3sldi+CJPKWwX3B/JJdH
IlvT3rjK3uiH/BP0vyInFED2MHp8hI6w02f7s0FTMUy5fkz+PQI+y4wrKkeHc19HzE6uwpNIn7//
MyQh3Yuf0Q8oe6KNlyPxUWpPSGkr8u/6S850M94H5AjXf4PiCT649Wb4k3gAK7YzXj2rwtGOvBXY
Nvik7cKd54FojZ/2pQ6M9QQaQ+TF/cngUDdYEqTLvvF7u8/IWJy1zaSMDXNjAJzgIO8h8KV1hrIt
N34CzVgJZkY931zs67KQ0io5X+YYoHKz66istw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
obuJGC87CkNcStgLP2YLdDSg17XZxNI2biSFdfdycHTQhQGgLrOOqlTDgPdkCgBESfggRKW2TGfT
7u4PLTrdETv4qXRxiMPbTZJzmSGxUcSH44NkCFAtSj68yvzx26M0iI7nhnW2LR0QWPZwi9GAXOmD
9a6mRkXO0E43aY9s1bSGNiv4ndK38vqOrroGohYr1A0Jtij+BHigz3HWQrCqDuUX2gjZP+RxCldK
R4ragxF/y53U3TAVdJFRwFQeSachB9T7aemoYRz0zKB8Pv69/WrH/SkkE2O+kD81daFGWagjHD6h
CeoQSCeRkDoZgq3cqoM5EtuDUwEdNfZHjk4tCg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12416)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
