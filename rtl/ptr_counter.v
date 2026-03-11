module ptr_counter #(
    parameter FIFO_DEPTH = 16
)   (
    input clk,
    input rstn,
    input en,
    output reg [$clog2(FIFO_DEPTH) : 0]  ptr,   //the surplus highest bit indicates the lap
    output [$clog2(FIFO_DEPTH) - 1 : 0]  addr
);

always@(posedge clk or negedge rstn)    begin
    if(!rstn)   begin
        ptr <= {($clog2(FIFO_DEPTH)+1){1'b0}};
    end

    else if(en) begin
        ptr <= ptr + 1'b1;
    end
end

assign addr = ptr[$clog2(FIFO_DEPTH) - 1 : 0];

endmodule
