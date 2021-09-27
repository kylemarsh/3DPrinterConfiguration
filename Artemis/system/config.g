M550 PArtemis                              ; Printer name
M555 P2                                    ; Gcode Output Type
M552 S1                                    ; Enable Wifi 1/ Disable 0
M575 P1 B57600 S1                          ; PanelDue Comm Setup
G21                                        ; Work in millimeters
G90                                        ; Send absolute coordinates

M584 X0 Y1 Z2 E3:4                         ; Set drive mapping

M569 P0 S0                                 ; Drive 0 goes forwards (X)
M569 P1 S0                                 ; Drive 1 goes forwards (Y)
M569 P2 S0                                 ; Drive 2 goes forwards (Z)
M569 P3 S1                                 ; Drive 3 goes forwards (E0)
M569 P4 S1                                 ; Drive 4 goes forwards (E1)

M574 X2 S1 P"xstop"                        ; set end stop configuration (x-tower end stop at high end, active high)
M574 Y2 S1 P"ystop"                        ; set end stop configuration (y-tower end stop at high end, active high)
M574 Z2 S1 P"zstop"                        ; set end stop configuration (z-tower end stop at high end, active high)

;M665 R150 L351.1 B145 H530 X0 Y0 Z0        ; INJ. MOLDED ARMS delta radius, diagonal rod length, printable radius and homed height
M665 R150 L339.47 B145 H530 X0 Y0 Z0       ; CARBON FIBER ARMS delta radius, diagonal rod length, printable radius and homed height
                                           ; Y X Z are tower angle offsets
M666 X0 Y0 Z0                              ; end stop offsets in mm

M350 X16 Y16 Z16 E16:16 I1                 ; Set 16x micro-stepping w/ Interpolation
M92 X200 Y200 Z200                         ; Set axis steps/mm
M92 E182.0:182.0                           ; Set extruder steps/mm

M906 X1500 Y1500 Z1500 E1200:1200 I50      ; Set motor currents (mA) and idle current %
M201 X2400 Y2400 Z2400 E5000               ; Accelerations (mm/s^2)
M203 X12000 Y12000 Z12000 E18000           ; Maximum speeds (mm/min)
M566 X500 Y500 Z500 E2000                  ; Maximum instant speed changes mm/minute

; Set up temperature sensors
M308 S0 P"bed_temp" Y"thermistor" A"Bed Temp" T100000 B4388 R4700 H30 L0         ; Bed thermistor
M308 S1 P"e0_temp" Y"thermistor" A"Tool Temp" T100000 B4388 R4700 C7.06e-8 H30 L0     ; Hot end Thermistor

; Set up heaters
M950 H0 C"bed_heat" T0                     ; heater 0 uses the bed_heat pin, sensor 0
M950 H1 C"e0_heat" T1                      ; heater 1 uses the e0_heat pin, sensor 0

; Configure heaters (tuned for PLA; 60C bed and 200C hotend)
M307 H0 B0 R0.197 C885.9 D37.77 S1.00 V13.8     ; Heated bed PID tuning parameters for 60C (in case config-overrides.g gets blown away)
M307 H1 B0 R4.386 C105.7:71.5 D4.84 S1.00 V13.6 ; Hot end PID tuning paramters for 200C (in case config-overrides.g gets blown away)
M140 H0                                         ; the bed heater is heater 0

; Set up fans
M950 F0 C"fan0"                            ; Part Cooling Fan
M106 P0 H-1
M950 F2 C"fan2"                            ; Heat sink fan
M106 P2 T50 S0.7 H1

; Configure tools
M563 P0 D0 H1 S"Left Ext."                 ; Hot end (T0), drive (E0), heater (H1)
G10 P0 S0 R0                               ; Hot end operating and standby temperatures
M563 P1 D1 H1 S"Right Ext."                ; Hot end (T1), drive (E1), heater (H1)
G10 P1 S0 R0                               ; Hot end (1) operating and standby temperatures

;STRAIN GAGE PROBE
M98 P"0:/macros/sys/probe_config.g"
G31 P100 X0 Y0 Z-0.228                       ; Probe trigger and offset values Glass Plate Only
;G31 P100 X0 Y0 Z-0.5                        ; Probe trigger and offset values for FabLam Flex Spring Steel PEI on Glass
M557 R140 S30                                ; defualt bed mapping
M501                                         ; Load saved config values
T0                                           ; Select Tool 0
;M375					    ; Load height map (for mesh compensation)




