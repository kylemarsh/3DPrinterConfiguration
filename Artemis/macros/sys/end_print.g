G90                          ; set to relative positioning
G1 Z10 F10000                ; raise nozzle away from print as fast as possible
G91                          ; return to abolute positioning

M104 S0                      ; hotend off
M140 S0                      ; bed off
M106 S0                      ; fan off
M203 Z10000                  ; set speed (this compensated for old control problem)
G92 E0                       ; zero extruder
G1 E-160 F5000               ; retract filament to starting position
G92 E0                       ; zero extruder
M98 P"0:/macros/sys/maybe_home.g"
