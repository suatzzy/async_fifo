/*===============================================================
Copyright (c): Technology Co.,Ltd. ALL rights reserved. 
                                                                        
  Create by:
      Email:
       Date:
   Filename:
Description:
    Version:
Last Change:*/


module async_fifo_wrap  #(
    parameter DATA_WIDTH = 8,
    parameter FIFO_DEPTH = 16,
    parameter ALMOST_FULL_THRESHOLD = FIFO_DEPTH - 1,
    parameter ALMOST_EMPTY_THRESHOLD = 2

)   (
    input   wr_clk,
    input   wr_rstn,
    input   wr_en,
    input [DATA_WIDTH-1 : 0]  wr_data,
    output  wr_full,
    output  almost_full,


    input   rd_clk,
    input   rd_rstn,
    input   rd_en,
    output [DATA_WIDTH-1 : 0] rd_data,
    output  rd_empty,
    output  almost_empty
);

localparam ADDR_WIDTH = $clog2(FIFO_DEPTH);


//connect async_fifo_nomem  with  dual_port_mem
wire sram_wr_en;
wire [ADDR_WIDTH-1 : 0] sram_wr_addr;
wire [DATA_WIDTH-1 : 0] sram_wr_data;

wire sram_rd_en;
wire [ADDR_WIDTH-1 : 0] sram_rd_addr;
wire [DATA_WIDTH-1 : 0] sram_rd_data;
async_fifo_nomem #(
        .DATA_WIDTH             ( DATA_WIDTH  ),
        .FIFO_DEPTH             ( FIFO_DEPTH ),
        .ALMOST_FULL_THRESHOLD  ( ALMOST_FULL_THRESHOLD ),
        .ALMOST_EMPTY_THRESHOLD ( ALMOST_EMPTY_THRESHOLD  )
) async_fifo_nomem_inst (
        .wr_clk                 ( wr_clk ),
        .wr_rstn                ( wr_rstn ),
        .wr_en                  ( wr_en ),
        .wr_data                ( wr_data ),
        .wr_full                ( wr_full ),
        .almost_full            ( almost_full ),

        .rd_clk                 ( rd_clk ),
        .rd_rstn                ( rd_rstn ),
        .rd_en                  ( rd_en ),
        .rd_data                ( rd_data ),
        .rd_empty               ( rd_empty ),
        .almost_empty           ( almost_empty ),

        .wr_en_to_mem           ( sram_wr_en ),
        .wr_addr_to_mem         ( sram_wr_addr ),
        .wr_data_to_mem         ( sram_wr_data ),

        .rd_en_to_mem           ( sram_rd_en ),
        .rd_addr_to_mem         ( sram_rd_addr ),
        .rd_data_from_mem       ( sram_rd_data )
);

dual_port_mem #(             
    .MEM_DEPTH(FIFO_DEPTH),
    .DATA_WIDTH(DATA_WIDTH)

)  pseudo_dual_port_mem_inst (
    .wr_clk(wr_clk),
    .wr_rstn(wr_rstn),
    .rd_clk(rd_clk),
    .rd_rstn(rd_rstn),

    .wr_en(sram_wr_en),
    .wr_addr(sram_wr_addr),
    .wr_data(sram_wr_data),

    .rd_en(sram_rd_en),
    .rd_addr(sram_rd_addr),
    .rd_data(sram_rd_data)
);



endmodule
