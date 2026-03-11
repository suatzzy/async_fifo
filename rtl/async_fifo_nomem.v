module async_fifo_nomem #(
    parameter DATA_WIDTH = 8,
    parameter FIFO_DEPTH = 16,
    parameter ALMOST_FULL_THRESHOLD = 15,
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
    output  almost_empty,


    output  wr_en_to_mem,
    output  [$clog2(FIFO_DEPTH)-1 : 0]  wr_addr_to_mem,
    output  [DATA_WIDTH-1 : 0]  wr_data_to_mem,

    output  rd_en_to_mem,
    output  [$clog2(FIFO_DEPTH)-1 : 0]  rd_addr_to_mem,
    input  [DATA_WIDTH-1 : 0]  rd_data_from_mem
    
);
localparam PTR_WIDTH = $clog2(FIFO_DEPTH) + 1;
localparam ADDR_WIDTH = $clog2(FIFO_DEPTH);

//interface for mem
assign wr_en_to_mem = wr_en && !wr_full;
assign rd_en_to_mem = rd_en && !rd_empty;

wire [ADDR_WIDTH-1 : 0] wr_addr;
wire [ADDR_WIDTH-1 : 0] rd_addr;
assign wr_addr_to_mem = wr_addr;
assign rd_addr_to_mem = rd_addr;

assign wr_data_to_mem = wr_data;
assign rd_data = rd_data_from_mem;

//two pointers
wire [PTR_WIDTH-1 : 0]  wr_ptr;
wire [PTR_WIDTH-1 : 0]  rd_ptr;

ptr_counter #(
    .FIFO_DEPTH(FIFO_DEPTH)
)    wr_ptr_inst   (

    .clk(wr_clk),
    .rstn(wr_rstn),
    .en(wr_en_to_mem),
    .ptr(wr_ptr),   
    .addr(wr_addr)
);

ptr_counter #(
    .FIFO_DEPTH(FIFO_DEPTH)
)    rd_ptr_inst   (

    .clk(rd_clk),
    .rstn(rd_rstn),
    .en(rd_en_to_mem),
    .ptr(rd_ptr),   
    .addr(rd_addr)
);


//two binary2gray
wire [PTR_WIDTH-1 : 0]  wr_ptr_gray_t;
wire [PTR_WIDTH-1 : 0]  wr_ptr_gray_d_t;
bin2gray #(
    .DATA_WIDTH(PTR_WIDTH)
)   wr_b2g_inst (
    .clk(wr_clk),
    .rstn(wr_rstn),    
    .binary(wr_ptr),
    .gray(wr_ptr_gray_t),
    .gray_dly(wr_ptr_gray_d_t)
);

wire [PTR_WIDTH-1 : 0]  rd_ptr_gray_t;
wire [PTR_WIDTH-1 : 0]  rd_ptr_gray_d_t;
bin2gray #(
    .DATA_WIDTH(PTR_WIDTH)
)   rd_b2g_inst (
    .clk(rd_clk),
    .rstn(rd_rstn),    
    .binary(rd_ptr),
    .gray(rd_ptr_gray_t),
    .gray_dly(rd_ptr_gray_d_t)
);



//write pointer gray/grayedly being synchronized to read side 
wire [PTR_WIDTH-1 : 0]  wr_ptr_gray_d_synced;
syncer   #(
    .DATA_WIDTH(PTR_WIDTH)
)  wr_ptr_gray_dly_sync2rdempty_inst (
    .clk(rd_clk),
    .rstn(rd_rstn),
    .unsync(wr_ptr_gray_d_t),
    .synced(wr_ptr_gray_d_synced)
);
wire [PTR_WIDTH-1 : 0]  wr_ptr_gray_synced_2g2b;
syncer   #(
    .DATA_WIDTH(PTR_WIDTH)
)  wr_ptr_gray_sync2g2b_inst (
    .clk(rd_clk),
    .rstn(rd_rstn),
    .unsync(wr_ptr_gray_t),
    .synced(wr_ptr_gray_synced_2g2b)
);
wire [PTR_WIDTH-1 : 0]  wr_ptr_gray_synced_bin;
gray2bin #(
    .DATA_WIDTH(PTR_WIDTH)
)   wr_sync_g2b_inst    (
    .clk(rd_clk),
    .rstn(rd_rstn),
    .gray(wr_ptr_gray_synced_2g2b),
    .bin(),
    .bin_dly(wr_ptr_gray_synced_bin)
);

//read pointer gray/graydly being synchronized to write side
wire [PTR_WIDTH-1 : 0]  rd_ptr_gray_d_synced;
syncer   #(
    .DATA_WIDTH(PTR_WIDTH)
)  rd_ptr_gray_dly_sync2wrfull_inst (
    .clk(wr_clk),
    .rstn(wr_rstn),
    .unsync(rd_ptr_gray_d_t),
    .synced(rd_ptr_gray_d_synced)
);
wire [PTR_WIDTH-1 : 0]  rd_ptr_gray_synced_2g2b;
syncer   #(
    .DATA_WIDTH(PTR_WIDTH)
)  rd_ptr_gray_sync2g2b_inst (
    .clk(wr_clk),
    .rstn(wr_rstn),
    .unsync(rd_ptr_gray_t),
    .synced(rd_ptr_gray_synced_2g2b)
);
wire [PTR_WIDTH-1 : 0]  rd_ptr_gray_synced_bin;
gray2bin #(
    .DATA_WIDTH(PTR_WIDTH)
)   rd_sync_g2b_inst    (
    .clk(wr_clk),
    .rstn(wr_rstn),
    .gray(rd_ptr_gray_synced_2g2b),
    .bin(),
    .bin_dly(rd_ptr_gray_synced_bin)
);



//write full judge
wr_full #(
    .FIFO_DEPTH(FIFO_DEPTH),
    .ALMOST_FULL_THRESHOLD(ALMOST_FULL_THRESHOLD)
) wr_full_inst  (
    .rd_ptr_gray_synced(rd_ptr_gray_d_synced),
    .rd_ptr_gray_synced_bin(rd_ptr_gray_synced_bin),
    .wr_ptr_gray(wr_ptr_gray_t),
    .wr_ptr(wr_ptr),
    .wr_full(wr_full),
    .almost_full(almost_full)
);

//read empty judge
rd_empty #(
    .FIFO_DEPTH(FIFO_DEPTH),
    .ALMOST_EMPTY_THRESHOLD(ALMOST_EMPTY_THRESHOLD)
) rd_empty_inst  (
    .wr_ptr_gray_synced(wr_ptr_gray_d_synced),
    .wr_ptr_gray_synced_bin(wr_ptr_gray_synced_bin),
    .rd_ptr_gray(rd_ptr_gray_t),
    .rd_ptr(rd_ptr),
    .rd_empty(rd_empty),
    .almost_empty(almost_empty)
);

endmodule
