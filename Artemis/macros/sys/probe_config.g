; Base strain gauge probe settings. Call this macro after changing the settings
; for First Probe or other purposes with
; M98 P"0:/macros/sys/probe_config.g"

M558 P5 I0 A4 R0.4 C"zprobe.in" H10 F2000 T6000         ; F2000 CF ARMS and F2500 Injection Molded ARMS, HOTEND PROBEset Z probe type to switch and the dive height + speeds
