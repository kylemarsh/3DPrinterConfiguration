; WARNING -- use ready_effector.g, prime_nozzle.g, and wipe_nozzle.g in your
; printer's start gcode instead of this macro until RRF3.3 when we get params

; Configure your slicer to call this macro at the beginning of the print with
;   M98 P"0:/macros/sys/start_print.g T[first_layer_temperature] B[first_layer_bed_temperature]"
; This will home the axes if necessary, set z=0 by probing, set the temperatures, ready
; the effector, and prime the nozzle.

;M98 P"0:/macros/sys/maybe_home.g"  ; not sure if the object model for this is supported in 3.2.2
G28                                 ; home

; Prime nozzle
; TODO: have slicer figure out the correct tool to start with ahead of time and pass it as param
M104 S150                    ; heat hotend to 150 -- warm, but not oozing or burning filament
M117 Heating Bed...
M190 S{param.B}              ; set bed temperature to value in parameter B and wait
G1 Z30 Y-190 F5000           ; lower print head and move to the edge of the bed so priming nozzle doesn't dribble filament in the middle
M117 Heating Nozzle
M109 S{param.T}              ; heat hotend to first layer temp
G1 E160 F2500                ; bring filament to nozzle, assuming loaded with macro
M400                        ; wait for movement to finish

; Wipe
; TODO: add a wipe to clear ooze before starting print
; do the math to figure out x and y positions for the end of a 30mm arc along
; the circumfrence of the bed (r = 145mm) and use the following to wipe:
; G3 X<x> Y<y> Z0.2 F???
