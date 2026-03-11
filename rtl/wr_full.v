module wr_full #(
    parameter FIFO_DEPTH = 16,
    parameter ALMOST_FULL_THRESHOLD = 15,
    parameter PTR_WIDTH = $clog2(FIFO_DEPTH) + 1
)   (
    input [PTR_WIDTH - 1 : 0]   rd_ptr_gray_synced,
    input [PTR_WIDTH - 1 : 0]   rd_ptr_gray_synced_bin,
    input [PTR_WIDTH - 1 : 0]   wr_ptr_gray,
    input [PTR_WIDTH - 1 : 0]   wr_ptr,
    output wr_full,
    output almost_full
);


assign wr_full = (rd_ptr_gray_synced[PTR_WIDTH-1 : PTR_WIDTH-2] == ~wr_ptr_gray[PTR_WIDTH-1 : PTR_WIDTH-2]) 
                        && (rd_ptr_gray_synced[PTR_WIDTH-3 : 0] == ~wr_ptr_gray[PTR_WIDTH-3 : 0]);

reg [PTR_WIDTH - 1 : 0] fifo_solid_cells;
always@(*)  begin
    if(wr_ptr[PTR_WIDTH-1] != rd_ptr_gray_synced_bin[PTR_WIDTH-1])
        fifo_solid_cells = FIFO_DEPTH - (rd_ptr_gray_synced_bin[PTR_WIDTH-2 : 0] - wr_ptr[PTR_WIDTH-2 : 0]);
    else    
        fifo_solid_cells = wr_ptr[PTR_WIDTH-2 : 0] - rd_ptr_gray_synced_bin[PTR_WIDTH-2 : 0];
end

assign almost_full = (fifo_solid_cells >= ALMOST_FULL_THRESHOLD);

endmodule
