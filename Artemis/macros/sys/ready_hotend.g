; Use this macro to home the machine and move the hotend to the edge of the
; printing area where it can ooze in peace by putting the following in your
; slicer's start gcode:
;   M98 P"0:/macros/sys/ready_hotend.g"

M98 P"0:/macros/sys/maybe_home.g"
G1 X0 Y-150 Z30 F5000
