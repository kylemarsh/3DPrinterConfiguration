; "Homing" script that brings the tool up out of the way, but doesn't hit the
; endstops. This is to avoid re-zeroing after loading a heightmap
; (If you set the heightmap with the probe, then home with the endstops your
; heightmap and z=0 point could be offset)
G1 X0 Y0 Z530 F6000
