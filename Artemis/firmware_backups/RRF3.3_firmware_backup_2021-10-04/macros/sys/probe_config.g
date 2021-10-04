; Base strain gauge probe settings. Call this macro after changing the settings
; for First Probe or other purposes with
; M98 P"0:/macros/sys/probe_config.g"

M558 P5 C"z_probe.in" I0 A3 S0.05 R0.4 F1500 ; Strain gauge probe settings
