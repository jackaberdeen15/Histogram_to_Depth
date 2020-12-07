// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Fri Oct 23 18:12:26 2020
// Host        : DESKTOP-1GSCE32 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/u39jm15/Documents/Vivado_Projects/Histogram_to_Depth/Histogram_to_Depth.srcs/sources_1/ip/c_addsub_0/c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module c_addsub_0
   (A,
    B,
    CLK,
    C_OUT,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_out_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_out_intf, LAYERED_METADATA undef" *) output C_OUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [15:0]S;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire C_OUT;
  wire [15:0]S;

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
  (* c_a_type = "1" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "1" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_14 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(C_OUT),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "1" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "16" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "0000000000000000" *) 
(* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "1" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "16" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintex7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module c_addsub_0_c_addsub_v12_0_14
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

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire C_OUT;
  wire [15:0]S;

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
  (* c_a_type = "1" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "1" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_14_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(C_OUT),
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
Sf5jtBHTXewNnyYSUrNuWpfptuUUbPog5hW95JzeRRyUlY1bbeVfAS4tiSPMtCUrCfRhPQflb+nA
Z7N2BAE9JjiEkP/Qlofljgds76xCpzC9QWlwsYmaP9vY4VGWQFps0i7D9EYuv3KaMuw7m7KTyhI/
n4Vtcortnq/B9OsKh8u2it5ho83VGt3dx7vsGxVy4nZG1VLZJa/F59MlCo23o/uDOsDK6cenO/Gz
caUWyq5mY5YHAITMEnAkBb0wHMl0SUwFoCnlEtciSstY/SBIn5ag41K7EKjWRth60ZVVNg4i2tob
1sMcqxZLEs624QL415UfOQFIPn/VQrlUKBRirw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YDQK0V/CDhcn3hA0NnLlBcWnxLA3h4vsIS9YFzgSWaT5IVZnf4KZ7ljt2liUxWQG1t5qPEywVBmD
Mi+PT9xwvKjBrHhNMJmZ7zke3NJBUMhychgSGW3HNlwu1Svh9CjJ1uGA0h3rlAd+IL+CyNsPOmVG
TAJbaWsoAfNG0whS32bDw6zwpxQ/PSfeB2iD/4yOKyJ62wBRnCU516LLOZvXqSHtE3GTtGQnUyd9
2xr0I2Pfcq1svke+qaUiZbphev1MZAqXLJffKa3rgj27izJb3FPDpPW7VJMUeHGn825gQUF09fC3
9/tJWns6wdGEZ6xs3zlEWrm+O3oXEFzBu8l+MA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13248)
`pragma protect data_block
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
GN4DDMQTfi/EbCISYlAHSqAcwxwGO/jG
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
