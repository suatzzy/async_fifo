debImport "-f" "files.f"
debLoadSimResult /home/jjt/target/frontend_homework/async_fifo/sim/dump.fsdb
wvCreateWindow
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcHBSelect "async_fifo_wrap_tb.async_fifo_wrap_inst" -win $_nTrace1
srcSetScope "async_fifo_wrap_tb.async_fifo_wrap_inst" -delim "." -win $_nTrace1
srcHBSelect "async_fifo_wrap_tb.async_fifo_wrap_inst" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "async_fifo_wrap_tb.async_fifo_wrap_inst" -win $_nTrace1
srcSetScope "async_fifo_wrap_tb.async_fifo_wrap_inst" -delim "." -win $_nTrace1
srcHBSelect "async_fifo_wrap_tb.async_fifo_wrap_inst" -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope \
           "async_fifo_wrap_tb.async_fifo_wrap_inst"
verdiSetActWin -win $_nSchema_3
srcHBSelect "async_fifo_wrap_tb.async_fifo_wrap_inst.pseudo_dual_port_mem_inst" \
           -win $_nTrace1
srcSetScope "async_fifo_wrap_tb.async_fifo_wrap_inst.pseudo_dual_port_mem_inst" \
           -delim "." -win $_nTrace1
srcHBSelect "async_fifo_wrap_tb.async_fifo_wrap_inst.pseudo_dual_port_mem_inst" \
           -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mem" -line 20 -pos 1 -win $_nTrace1
wvAddSignal -win $_nWave2 \
           "/async_fifo_wrap_tb/async_fifo_wrap_inst/pseudo_dual_port_mem_inst/mem\[0:15\]"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvExpandBus -win $_nWave2
verdiSetActWin -win $_nWave2
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvZoomAll -win $_nWave2
srcHBSelect "async_fifo_wrap_tb" -win $_nTrace1
srcSetScope "async_fifo_wrap_tb" -delim "." -win $_nTrace1
srcHBSelect "async_fifo_wrap_tb" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcDeselectAll -win $_nTrace1
srcSelect -signal "catch_pop_temp" -line 61 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvAddSignal -win $_nWave2 "/async_fifo_wrap_tb/catch_pop_temp\[7:0\]"
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvZoomAll -win $_nWave2
verdiSetActWin -win $_nWave2
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
debExit
