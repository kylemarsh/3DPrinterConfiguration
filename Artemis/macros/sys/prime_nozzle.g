; Brings the filament to the nozzle, and purges a small amount. Assumes filament
; loaded by a macro that leaves it 160mm back from the nozzle
;
; Configure your slicer to call this macro at the beginning of the print with
;   M98 P"0:/macros/sys/prime_nozzle.g"

G1 E160 F2500               ; bring filament to nozzle, assuming loaded with macro and temperature set by slicer
M400                        ; wait for movement to finish
