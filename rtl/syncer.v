module syncer   #(
    parameter DATA_WIDTH = 8
)   (
    input clk,
    input rstn,
    input [DATA_WIDTH-1 : 0] unsync,
    output [DATA_WIDTH-1 : 0] synced
);

reg [DATA_WIDTH-1 : 0] unsync_d1,unsync_d2;

always@(posedge clk or negedge rstn)    begin
    if(!rstn)   begin
        unsync_d1 <= 'b0;
        unsync_d2 <= 'b0;
    end
    else begin
        unsync_d1 <= unsync;
        unsync_d2 <= unsync_d1;
    end
end

assign synced = unsync_d2;

endmodule
