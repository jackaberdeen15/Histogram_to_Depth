// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Fri Oct 23 18:12:25 2020
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_14 U0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_14_viv xst_addsub
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
i84JpYnLc14CAAJuz757zAC/ocdla/kmHeLimKmg2jc51PzoJ/hazqCH3yODZggQdhdvwU9oeBId
o9cNWYJkFwqBqZF/fMs7O53LKIjFoAD51AG7QMZGmu46wkXk6E7VJR3G0zRE1+EyeexoTfznFVvB
sd0Y8OoQ6U4xR0IOp3a6Vh32bWtvBzqY4Ay4FH1cGYDuE1G16JgSarZxG2aV5w4ySbsilHJ5W/Ix
WKa4bPUMWRQTjXUxw9yi53dxKUAhvCcm9aLoBCE8K+qF8jWYBZI/CZaSLWkhFnEP3LhVvmN5CRYc
FQQnE1HwM0mIFO0AROEWEEC1U+Bi7GSltaUGVg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6o3OcD6ShUfquFKQ0nWr8j6F1ngywqIW+BJlP28X1VDvgFrpNUlfy4RbfQ2gobVWWHZSiv888I7N
SSe2Fq4FNPbPggNKyYi4tHmOQgzIcUdSkr+3+3ZFzxefFfcSiXIS/Clabev7yceZEotafD9YSejB
T9p1xWh8DjTcFWjUmS1Lbk5ffga6jc+QwO816QWBBSaoO2Tbfu4/vL0YPEGcW5SBOAQTLYcPrknq
8RXx6x1P7bwHhgllzcU/s41hmtVQlpOI5RF+K5AOM369NX2c423Qctnx7L2KvmCGrmokAnS1E5+7
YzQXTAHoGEsd466M56QTC0l4yn0uo6pGVEMK5A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13328)
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
