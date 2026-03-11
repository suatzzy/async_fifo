verdiSetActWin -dock widgetDock_<Message>
debImport "-f" "files.f"
debLoadSimResult /home/jjt/target/frontend_homework/async_fifo/sim/dump.fsdb
wvCreateWindow
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "async_fifo_wrap_tb.async_fifo_wrap_inst.pseudo_dual_port_mem_inst" \
           -win $_nTrace1
srcSetScope "async_fifo_wrap_tb.async_fifo_wrap_inst.pseudo_dual_port_mem_inst" \
           -delim "." -win $_nTrace1
srcHBSelect "async_fifo_wrap_tb.async_fifo_wrap_inst.pseudo_dual_port_mem_inst" \
           -win $_nTrace1
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
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 20345.803491 -snap {("G1" 1)}
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 236393.800358 -snap {("G2" 0)}
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 27092.323187 -snap {("G1" 0)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 531.222023 718743.397493
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvExpandBus -win $_nWave2
wvSetCursor -win $_nWave2 201784.947110 -snap {("G1" 7)}
wvSelectSignal -win $_nWave2 {( "G1" 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 )} \
           
wvSetRadix -win $_nWave2 -format UDec
wvZoom -win $_nWave2 113053.272791 114982.222232
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 78089.637422 -snap {("G1" 0)}
wvSetCursor -win $_nWave2 71714.973142 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 96682.408236 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 132805.505819 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 41966.539839 -snap {("G1" 0)}
wvSetCursor -win $_nWave2 55778.312444 -snap {("G1" 0)}
wvSetCursor -win $_nWave2 130000.000000
wvSetCursor -win $_nWave2 69058.863026
wvSetCursor -win $_nWave2 44622.649955 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 36654.319606 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 36654.319606 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 26561.101164 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 31342.099373 -snap {("G1" 1)}
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSetCursor -win $_nWave2 29217.211280 -snap {("G1" 1)}
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSetCursor -win $_nWave2 13280.550582 -snap {("G1" 1)}
srcHBSelect "async_fifo_wrap_tb" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "async_fifo_wrap_tb" -win $_nTrace1
srcSetScope "async_fifo_wrap_tb" -delim "." -win $_nTrace1
srcHBSelect "async_fifo_wrap_tb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "catch_pop_temp" -line 61 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvAddSignal -win $_nWave2 "/async_fifo_wrap_tb/catch_pop_temp\[7:0\]"
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetCursor -win $_nWave2 3187.332140 -snap {("G1" 0)}
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 30810.877350 -snap {("G1" 1)}
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSetCursor -win $_nWave2 23904.991047 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 27623.545210 -snap {("G1" 1)}
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSetCursor -win $_nWave2 11686.884512 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 5312.220233 -snap {("G1" 1)}
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSetCursor -win $_nWave2 66933.974933 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 9561.996419 -snap {("G1" 1)}
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSetCursor -win $_nWave2 531.222023 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 6374.664279 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 20186.436885 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 2656.110116 -snap {("G1" 1)}
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 373980.304387 549283.572068
wvZoomAll -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvSetCursor -win $_nWave2 679432.967771 -snap {("G1" 0)}
wvSetCursor -win $_nWave2 712368.733214 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 749554.274843 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 768678.267681 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 752741.606983 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 711306.289167 -snap {("G1" 2)}
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
debExit
