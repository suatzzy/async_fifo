/*===============================================================
Copyright (c): Technology Co.,Ltd. ALL rights reserved. 
                                                                        
  Create by:
      Email:
       Date:
   Filename:
Description:
    Version:
Last Change:*/


module gray2bin #(
    parameter DATA_WIDTH = 8
)   (
    input clk,
    input rstn,
    input [DATA_WIDTH-1:0]  gray,
    output [DATA_WIDTH-1:0] bin,
    output [DATA_WIDTH-1:0] bin_dly
);

reg [DATA_WIDTH-1:0] bin_t;

integer i;
always@(*)  begin
    bin_t[DATA_WIDTH-1] = gray[DATA_WIDTH-1];
    for(i = DATA_WIDTH-2; i >= 0; i = i-1)  begin
        bin_t[i] = bin_t[i+1] ^ gray[i];
    end
end

assign bin = bin_t;

reg [DATA_WIDTH-1:0] bin_r;

always@(posedge clk or negedge rstn)    begin
    if(!rstn)   begin
        bin_r <= {(DATA_WIDTH){1'b0}};
    end
    else begin
        bin_r <= bin_t;
    end
end
assign bin_dly = bin_r;

endmodule
