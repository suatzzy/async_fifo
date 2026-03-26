debImport "-f" "files.f"
debLoadSimResult /home/jjt/target/frontend_homework/async_fifo/sim/dump.fsdb
wvCreateWindow
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcHBSelect "async_fifo_wrap_tb" -win $_nTrace1
srcSetScope "async_fifo_wrap_tb" -delim "." -win $_nTrace1
srcHBSelect "async_fifo_wrap_tb" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
schCreateWindow -delim "." -win $_nSchema1 -scope "async_fifo_wrap_tb"
verdiSetActWin -win $_nSchema_3
debExit
