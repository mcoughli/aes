// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module aestest_top (
s_axi_aes_io_AWADDR,
s_axi_aes_io_AWVALID,
s_axi_aes_io_AWREADY,
s_axi_aes_io_WDATA,
s_axi_aes_io_WSTRB,
s_axi_aes_io_WVALID,
s_axi_aes_io_WREADY,
s_axi_aes_io_BRESP,
s_axi_aes_io_BVALID,
s_axi_aes_io_BREADY,
s_axi_aes_io_ARADDR,
s_axi_aes_io_ARVALID,
s_axi_aes_io_ARREADY,
s_axi_aes_io_RDATA,
s_axi_aes_io_RRESP,
s_axi_aes_io_RVALID,
s_axi_aes_io_RREADY,
interrupt,
aresetn,
aclk
);

parameter C_S_AXI_AES_IO_ADDR_WIDTH = 7;
parameter C_S_AXI_AES_IO_DATA_WIDTH = 32;
parameter RESET_ACTIVE_LOW = 1;

input [C_S_AXI_AES_IO_ADDR_WIDTH - 1:0] s_axi_aes_io_AWADDR ;
input s_axi_aes_io_AWVALID ;
output s_axi_aes_io_AWREADY ;
input [C_S_AXI_AES_IO_DATA_WIDTH - 1:0] s_axi_aes_io_WDATA ;
input [C_S_AXI_AES_IO_DATA_WIDTH/8 - 1:0] s_axi_aes_io_WSTRB ;
input s_axi_aes_io_WVALID ;
output s_axi_aes_io_WREADY ;
output [2 - 1:0] s_axi_aes_io_BRESP ;
output s_axi_aes_io_BVALID ;
input s_axi_aes_io_BREADY ;
input [C_S_AXI_AES_IO_ADDR_WIDTH - 1:0] s_axi_aes_io_ARADDR ;
input s_axi_aes_io_ARVALID ;
output s_axi_aes_io_ARREADY ;
output [C_S_AXI_AES_IO_DATA_WIDTH - 1:0] s_axi_aes_io_RDATA ;
output [2 - 1:0] s_axi_aes_io_RRESP ;
output s_axi_aes_io_RVALID ;
input s_axi_aes_io_RREADY ;
output interrupt ;

input aresetn ;

input aclk ;


wire [C_S_AXI_AES_IO_ADDR_WIDTH - 1:0] s_axi_aes_io_AWADDR;
wire s_axi_aes_io_AWVALID;
wire s_axi_aes_io_AWREADY;
wire [C_S_AXI_AES_IO_DATA_WIDTH - 1:0] s_axi_aes_io_WDATA;
wire [C_S_AXI_AES_IO_DATA_WIDTH/8 - 1:0] s_axi_aes_io_WSTRB;
wire s_axi_aes_io_WVALID;
wire s_axi_aes_io_WREADY;
wire [2 - 1:0] s_axi_aes_io_BRESP;
wire s_axi_aes_io_BVALID;
wire s_axi_aes_io_BREADY;
wire [C_S_AXI_AES_IO_ADDR_WIDTH - 1:0] s_axi_aes_io_ARADDR;
wire s_axi_aes_io_ARVALID;
wire s_axi_aes_io_ARREADY;
wire [C_S_AXI_AES_IO_DATA_WIDTH - 1:0] s_axi_aes_io_RDATA;
wire [2 - 1:0] s_axi_aes_io_RRESP;
wire s_axi_aes_io_RVALID;
wire s_axi_aes_io_RREADY;
wire interrupt;

wire aresetn;


wire [128 - 1:0] sig_aestest_inptext_V;
wire [128 - 1:0] sig_aestest_key_V;
wire [128 - 1:0] sig_aestest_outtext_V;
wire sig_aestest_outtext_V_ap_vld;
wire sig_aestest_ap_start;
wire sig_aestest_ap_ready;
wire sig_aestest_ap_done;
wire sig_aestest_ap_idle;

wire sig_aestest_ap_rst;



aestest aestest_U(
    .inptext_V(sig_aestest_inptext_V),
    .key_V(sig_aestest_key_V),
    .outtext_V(sig_aestest_outtext_V),
    .outtext_V_ap_vld(sig_aestest_outtext_V_ap_vld),
    .ap_start(sig_aestest_ap_start),
    .ap_ready(sig_aestest_ap_ready),
    .ap_done(sig_aestest_ap_done),
    .ap_idle(sig_aestest_ap_idle),
    .ap_rst(sig_aestest_ap_rst),
    .ap_clk(aclk)
);

aestest_aes_io_if #(
    .C_ADDR_WIDTH(C_S_AXI_AES_IO_ADDR_WIDTH),
    .C_DATA_WIDTH(C_S_AXI_AES_IO_DATA_WIDTH))
aestest_aes_io_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .I_inptext_V(sig_aestest_inptext_V),
    .I_key_V(sig_aestest_key_V),
    .O_outtext_V(sig_aestest_outtext_V),
    .O_outtext_V_ap_vld(sig_aestest_outtext_V_ap_vld),
    .I_ap_start(sig_aestest_ap_start),
    .O_ap_ready(sig_aestest_ap_ready),
    .O_ap_done(sig_aestest_ap_done),
    .O_ap_idle(sig_aestest_ap_idle),
    .AWADDR(s_axi_aes_io_AWADDR),
    .AWVALID(s_axi_aes_io_AWVALID),
    .AWREADY(s_axi_aes_io_AWREADY),
    .WDATA(s_axi_aes_io_WDATA),
    .WSTRB(s_axi_aes_io_WSTRB),
    .WVALID(s_axi_aes_io_WVALID),
    .WREADY(s_axi_aes_io_WREADY),
    .BRESP(s_axi_aes_io_BRESP),
    .BVALID(s_axi_aes_io_BVALID),
    .BREADY(s_axi_aes_io_BREADY),
    .ARADDR(s_axi_aes_io_ARADDR),
    .ARVALID(s_axi_aes_io_ARVALID),
    .ARREADY(s_axi_aes_io_ARREADY),
    .RDATA(s_axi_aes_io_RDATA),
    .RRESP(s_axi_aes_io_RRESP),
    .RVALID(s_axi_aes_io_RVALID),
    .RREADY(s_axi_aes_io_RREADY),
    .interrupt(interrupt));

aestest_ap_rst_if #(
    .RESET_ACTIVE_LOW(RESET_ACTIVE_LOW))
ap_rst_if_U(
    .dout(sig_aestest_ap_rst),
    .din(aresetn));

endmodule
