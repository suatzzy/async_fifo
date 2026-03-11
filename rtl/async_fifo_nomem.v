module async_fifo_nomem #(
    parameter DATA_WIDTH = 8,
    parameter FIFO_DEPTH = 16,
    parameter ALMOST_FULL_THRESHOLD = 15,
    parameter ALMOST_EMPTY_THRESHOLD = 2
)   (
    input   wr_clk,
    input   wr_rstn,
    input   wr_en,
    input [DATA_WIDTH]  wr_data,
    output  wr_full,
    output  almost_full,


    input   rd_clk,
    input   rd_rstn,
    input   rd_en,
    output [DATA_WIDTH] rd_data,
    output  rd_empty,
    output  almost_empty

);




endmodule
