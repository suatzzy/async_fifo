
module rd_empty #(
    parameter FIFO_DEPTH = 16,
    parameter ALMOST_EMPTY_THRESHOLD = 2,
    parameter PTR_WIDTH = $clog2(FIFO_DEPTH) + 1
)   (
    input [PTR_WIDTH - 1 : 0]   rd_ptr,
    input [PTR_WIDTH - 1 : 0]   rd_ptr_gray,
    input [PTR_WIDTH - 1 : 0]   wr_ptr_gray_synced,
    input [PTR_WIDTH - 1 : 0]   wr_ptr_gray_synced_bin,
    output rd_empty,
    output almost_empty
);

assign rd_empty = rd_ptr_gray == wr_ptr_gray_synced;




reg [PTR_WIDTH - 1 : 0] fifo_solid_cells;
always@(*)  begin
    if(rd_ptr[PTR_WIDTH-1] != wr_ptr_gray_synced_bin[PTR_WIDTH-1])
        fifo_solid_cells = FIFO_DEPTH - (rd_ptr[PTR_WIDTH-2 : 0] - wr_ptr_gray_synced_bin[PTR_WIDTH-2 : 0]);
    else    
        fifo_solid_cells = wr_ptr_gray_synced_bin[PTR_WIDTH-2 : 0] - rd_ptr[PTR_WIDTH-2 : 0];
end

assign almost_empty = (fifo_solid_cells < ALMOST_EMPTY_THRESHOLD);

endmodule
