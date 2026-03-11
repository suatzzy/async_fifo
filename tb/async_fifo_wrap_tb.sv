/*=======================================================================================
Copyright (c): School of Computational Microelectronics,SUAT.ALL rights reserved. 
                                                                        
  Create by:Zhenyan ZHU
      Email:suat25060340@stu.suat-sz.edu.cn
       Date:
   Filename:
Description:
    Version:
Last Change:
   
=============================================================================*/
//Global Parameter Configuration                                   
`ifndef _ASYNC_FIFO_WRAP_TB_SV
`define _ASYNC_FIFO_WRAP_TB_SV
                                                                  
                                                                  
`endif
/*==========================================================================*/
module async_fifo_wrap_tb();

parameter DATA_WIDTH = 8;
parameter FIFO_DEPTH = 16;
parameter ALMOST_FULL_THRESHOLD = FIFO_DEPTH - 1;
parameter ALMOST_EMPTY_THRESHOLD = 2;

reg   wr_clk, wr_en;
reg [DATA_WIDTH-1 : 0]  wr_data;
wire  wr_full,almost_full;

reg rstn;

reg   rd_clk, rd_en;
wire [DATA_WIDTH-1 : 0] rd_data;
wire  rd_empty,almost_empty;

async_fifo_wrap #(
        .DATA_WIDTH             ( DATA_WIDTH  ),
        .FIFO_DEPTH             ( FIFO_DEPTH ),
        .ALMOST_FULL_THRESHOLD  ( ALMOST_FULL_THRESHOLD ),
        .ALMOST_EMPTY_THRESHOLD ( ALMOST_EMPTY_THRESHOLD  )
) async_fifo_wrap_inst (
        .wr_clk                 ( wr_clk       ),
        .wr_rstn                ( rstn      ),
        .wr_en                  ( wr_en        ),
        .wr_data                ( wr_data      ),
        .wr_full                ( wr_full      ),
        .almost_full            ( almost_full  ),

        .rd_clk                 ( rd_clk       ),
        .rd_rstn                ( rstn      ),
        .rd_en                  ( rd_en        ),
        .rd_data                ( rd_data      ),
        .rd_empty               ( rd_empty     ),
        .almost_empty           ( almost_empty )
);

always #10  wr_clk = ~wr_clk;
always #12.987 rd_clk = ~rd_clk;

reg [DATA_WIDTH-1 : 0]  catch_pop_temp;
initial begin
    wr_clk = 0;
    rd_clk = 0;
    rstn = 0;
    wr_en = 0;
    rd_en = 0;
    wr_data = 0;
    catch_pop_temp = 0;
    #15
    rstn = 1;
    push(1);
    fork
        push(2);
        pop(catch_pop_temp);    //reader side consider fifo as empty.fail to pop        
    join
    push(10);
    push(20);
    push(30);
    push(40);
    push(50);
    push(60);
    push(70);
    push(80);
    push(90);
    push(100);
    push(110);
    push(120);
    push(130);
    pop(catch_pop_temp);
    push(catch_pop_temp);
    push(catch_pop_temp);
    push(catch_pop_temp);
    push(catch_pop_temp);
    pop(catch_pop_temp);
    pop(catch_pop_temp);
    pop(catch_pop_temp);
    pop(catch_pop_temp);
    pop(catch_pop_temp);
    pop(catch_pop_temp);
    pop(catch_pop_temp);
    pop(catch_pop_temp);
    pop(catch_pop_temp);
    pop(catch_pop_temp);
    pop(catch_pop_temp);
    pop(catch_pop_temp);
    pop(catch_pop_temp);
    pop(catch_pop_temp);
    push(140);
    pop(catch_pop_temp);
    push(catch_pop_temp);
    pop(catch_pop_temp);
    pop(catch_pop_temp);
    pop(catch_pop_temp);
    push(5);
    pop(catch_pop_temp);
    pop(catch_pop_temp);
    pop(catch_pop_temp);
    push(10);
    push(20);
    push(30);
    push(40);
    push(50);
    push(60);
    push(70);
    push(80);
    push(90);
    push(100);
    push(110);
    push(120);
    push(130);
    push(10);
    push(20);
    push(30);
    #100
    $finish;

end




task push(
    input   [DATA_WIDTH-1 : 0]  data
);
    if(wr_full)
        $display("---Cannot push %d :FIFO is possible Full---",data);
    else begin
        $display("Push %d",data);
        wr_data = data;
        wr_en = 1;
        @(posedge wr_clk)    ;
        #5 wr_en = 0;
    end
endtask

task pop (
    output  [DATA_WIDTH-1 : 0]  data
);
    if(rd_empty)
        $display("---Cannot pop %d :FIFO is possible empty---",data);
    else begin
        rd_en = 1;
        @(posedge rd_clk)    ;
        #3 rd_en = 0;
        data = rd_data;
        $display("---Popped %d",data);
    end

endtask


endmodule

