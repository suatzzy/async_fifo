module bin2gray #(
    parameter DATA_WIDTH = 8
)   (
    input clk,
    input rstn,
    
    input [DATA_WIDTH-1 : 0]    binary,
    output [DATA_WIDTH-1 : 0]   gray   ,
    output [DATA_WIDTH-1 : 0]   gray_dly   //gray_delayed
);

reg [DATA_WIDTH-1 : 0]   gray_t;    //temporary variable

always@(*)  begin
    gray_t = binary ^ (binary >> 1);
end

assign gray = gray_t;

reg [DATA_WIDTH-1 : 0]   gray_r;       //gray_registered

always@(posedge clk or negedge rstn)    begin
    if(!rstn)   begin
        gray_r <= 'b0;
    end
    else begin
        gray_r <= gray_t;
    end
end

assign gray_dly = gray_r;

endmodule
