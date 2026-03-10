module wr_full #(
    parameter PTR_WIDTH = 8,
    parameter ALMOST_FULL_NUM = 15
)   (
    input [PTR_WIDTH - 1 : 0]   rd_gray_synced,
    input [PTR_WIDTH - 1 : 0]   rd_gray_synced_bin,
    input [PTR_WIDTH - 1 : 0]   wr_gray,
    output wr_full,
    output almost_full
);

assign wr_full = (rd_gray_synced[PTR_WIDTH-1 : PTR_WIDTH-2] == ~wr_gray[PTR_WIDTH-1 : PTR_WIDTH-2]) 
                        && (rd_gray_synced[PTR_WIDTH-3 : 0] == ~wr_gray[PTR_WIDTH-3 : 0]);

endmodule
