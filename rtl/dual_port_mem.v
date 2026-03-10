module dual_port_mem #(             //pseudo dual port ram
    parameter DEPTH = 16,
    parameter WIDTH = 8

)   (
    input wr_clk,
    input wr_rstn,
    input rd_clk,
    input rd_rstn,

    input wr_en,
    input [$clog2(DEPTH)-1 : 0] wr_addr,
    input [WIDTH - 1 : 0]   wr_data,

    input rd_en,
    input [$clog2(DEPTH)-1 : 0] rd_addr,
    output reg [WIDTH - 1 : 0]   rd_data
);

reg [WIDTH -1 : 0]  mem [0 : DEPTH - 1];


integer i;
always@(posedge wr_clk or negedge wr_rstn)  begin
    if(!wr_rstn) begin
        for(i = 0 ; i < DEPTH ; i = i +1)    mem[i] <= {WIDTH{1'b0}};
    end

    else if(wr_en)  begin
        mem[wr_addr] <= wr_data;
    end
end


always@(posedge rd_clk or negedge rd_rstn)  begin
    if(!rd_rstn) begin
       rd_data <= {WIDTH{1'b0}};
    end

    else if(rd_en)  begin
        rd_data <= mem[rd_addr];
    end
end


endmodule
