; Configure your slicer to call this macro at the beginning of the print with
;   M98 P"0:/macros/sys/start_print.g" T[first_layer_temperature] B[first_layer_bed_temperature]
; This will home the axes if necessary, set z=0 by probing, set the temperatures, ready
; the effector, and prime the nozzle.

M98 P"0:/macros/sys/maybe_home.g"
M98 P"0:/macros/Probe Zero"

; Prime nozzle
; TODO: have slicer figure out the correct tool to start with ahead of time and pass it as param
M568 P0 R150 S{param.T} A1  ; set hotend to standby. Standby temp = 150C, Active temp = value in parameter T
M190 S{param.B}             ; set bed temperature to value in parameter B and wait
G1 Z30 Y-190 F5000          ; lower print head and move to the edge of the bed so priming nozzle doesn't dribble filament in the middle
M568 P0 A2                  ; set hotend to standby. Standby temp = 150C, Active temp = value in parameter T
M116 H1                     ; Wait for hotend temperature (use "heater" not "tool" so it's extruder-agnostic)
G1 E160 F2500               ; bring filament to nozzle, assuming loaded with macro and temperature set by slicer
M400                        ; wait for movement to finish

; Wipe
; TODO: add a wipe to clear ooze before starting print
; do the math to figure out x and y positions for the end of a 30mm arc along
; the circumfrence of the bed (r = 145mm) and use the following to wipe:
; G3 X<x> Y<y> Z0.2 F???
