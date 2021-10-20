; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Printer: Artemis
; Filament: Atomic PLA - Silky Lilac
; Created: Tue Oct 19 2021 20:28:53 GMT-0700 (Pacific Daylight Time)
; URL: https://marlinfw.org/tools/lin_advance/k-factor.html
; Preprocessing steps:
;  - delete everything in this file between "print the anchor frame" and "FINISH"
;  - visit above URL and plug in below values (tweak to taste)
;  - generate gcode and copy evertyhing between "print the anchor frame" and "FINISH"
;  - paste into this file in appropriate spot (optionally do settings too)
;  - %s/M572 D0 S\(\d*\.\?\d*\)/M572 D0 S\1/
;  - %s/M117 K\(\d\+\.\?\d*\)/M291 T3 P"\1"/
;
; Settings Printer:
; Filament Diameter = 1.73 mm
; Nozzle Diameter = 0.5 mm
; Nozzle Temperature = 200 °C
; Bed Temperature = 60 °C
; Retraction Distance = 1 mm
; Layer Height = 0.2 mm
; Extruder = 0 
; Fan Speed = 0 %
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Round
; Bed Diameter = 145 mm
; Origin Bed Center = true
;
; Settings Speed:
; Slow Printing Speed = 1200 mm/min
; Fast Printing Speed = 4200 mm/min
; Movement Speed = 18000 mm/min
; Retract Speed = 1800 mm/min
; Unretract Speed = 1800 mm/min
; Printing Acceleration = 500 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Linear Advance Version = 1.5
; Starting Value Factor = 0.3
; Ending Value Factor = 0.7
; Factor Stepping = 0.04
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = true
; Number Lines = true
; Print Size X = 88 mm
; Print Size Y = 75 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Bed leveling = 0
; Use FWRETRACT = false
; Extrusion Multiplier = 1
; Prime Nozzle = false
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 2 s

;
; prepare printing
;
;Preamble
G10 P0 R190
M98 P"0:/macros/sys/ready_hotend.g"
M104 S150
M140 S60
M109 S200
M98 P"0:/macros/sys/prime_nozzle.g"
M190 S60
M107

G21 ; Millimeter units
G90 ; Absolute XYZ
M83 ; Relative E
T0 ; Switch to tool 0
M204 P500 ; Acceleration
G92 E0 ; Reset extruder distance
M106 P0 S0

G1 X0 Y0 F18000 ; move to start
G1 Z0.2 F1200 ; Move to layer height
;
;
; print anchor frame
;
G1 X-44 Y-40.5 F18000 ; move to start
G1 X-44 Y15.5 E3.1447 F1200 ; print line
G1 X-43.4 Y15.5 F18000 ; move to start
G1 X-43.4 Y-40.5 E3.1447 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X36 Y-40.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X36 Y15.5 E3.1447 F1200 ; print line
G1 X35.4 Y15.5 F18000 ; move to start
G1 X35.4 Y-40.5 E3.1447 F1200 ; print line
G1 E-1 F1800 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X-44 Y-37.5 F18000 ; move to start
M572 D0 S0.3 ; set K-factor
M291 T3 P"0.3" ; 
G1 E1 F1800 ; un-retract
G1 X-24 Y-37.5 E1.021 F1200 ; print line
G1 X16 Y-37.5 E2.042 F4200 ; print line
G1 X36 Y-37.5 E1.021 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X-44 Y-32.5 F18000 ; move to start
M572 D0 S0.34 ; set K-factor
M291 T3 P"0.34" ; 
G1 E1 F1800 ; un-retract
G1 X-24 Y-32.5 E1.021 F1200 ; print line
G1 X16 Y-32.5 E2.042 F4200 ; print line
G1 X36 Y-32.5 E1.021 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X-44 Y-27.5 F18000 ; move to start
M572 D0 S0.38 ; set K-factor
M291 T3 P"0.38" ; 
G1 E1 F1800 ; un-retract
G1 X-24 Y-27.5 E1.021 F1200 ; print line
G1 X16 Y-27.5 E2.042 F4200 ; print line
G1 X36 Y-27.5 E1.021 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X-44 Y-22.5 F18000 ; move to start
M572 D0 S0.42 ; set K-factor
M291 T3 P"0.42" ; 
G1 E1 F1800 ; un-retract
G1 X-24 Y-22.5 E1.021 F1200 ; print line
G1 X16 Y-22.5 E2.042 F4200 ; print line
G1 X36 Y-22.5 E1.021 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X-44 Y-17.5 F18000 ; move to start
M572 D0 S0.46 ; set K-factor
M291 T3 P"0.46" ; 
G1 E1 F1800 ; un-retract
G1 X-24 Y-17.5 E1.021 F1200 ; print line
G1 X16 Y-17.5 E2.042 F4200 ; print line
G1 X36 Y-17.5 E1.021 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X-44 Y-12.5 F18000 ; move to start
M572 D0 S0.5 ; set K-factor
M291 T3 P"0.5" ; 
G1 E1 F1800 ; un-retract
G1 X-24 Y-12.5 E1.021 F1200 ; print line
G1 X16 Y-12.5 E2.042 F4200 ; print line
G1 X36 Y-12.5 E1.021 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X-44 Y-7.5 F18000 ; move to start
M572 D0 S0.54 ; set K-factor
M291 T3 P"0.54" ; 
G1 E1 F1800 ; un-retract
G1 X-24 Y-7.5 E1.021 F1200 ; print line
G1 X16 Y-7.5 E2.042 F4200 ; print line
G1 X36 Y-7.5 E1.021 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X-44 Y-2.5 F18000 ; move to start
M572 D0 S0.58 ; set K-factor
M291 T3 P"0.58" ; 
G1 E1 F1800 ; un-retract
G1 X-24 Y-2.5 E1.021 F1200 ; print line
G1 X16 Y-2.5 E2.042 F4200 ; print line
G1 X36 Y-2.5 E1.021 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X-44 Y2.5 F18000 ; move to start
M572 D0 S0.62 ; set K-factor
M291 T3 P"0.62" ; 
G1 E1 F1800 ; un-retract
G1 X-24 Y2.5 E1.021 F1200 ; print line
G1 X16 Y2.5 E2.042 F4200 ; print line
G1 X36 Y2.5 E1.021 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X-44 Y7.5 F18000 ; move to start
M572 D0 S0.66 ; set K-factor
M291 T3 P"0.66" ; 
G1 E1 F1800 ; un-retract
G1 X-24 Y7.5 E1.021 F1200 ; print line
G1 X16 Y7.5 E2.042 F4200 ; print line
G1 X36 Y7.5 E1.021 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X-44 Y12.5 F18000 ; move to start
;
; Mark the test area for reference
M291 T3 P"0"
M572 D0 S0 ; Set K-factor 0
G1 X-24 Y17.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X-24 Y37.5 E1.021 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X16 Y17.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X16 Y37.5 E1.021 F1200 ; print line
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
;
; print K-values
;
G1 X38 Y-39.5 F18000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X40 Y-39.5 E0.1021 F1200 ; 0
G1 X40 Y-37.5 E0.1021 F1200 ; 0
G1 X40 Y-35.5 E0.1021 F1200 ; 0
G1 X38 Y-35.5 E0.1021 F1200 ; 0
G1 X38 Y-37.5 E0.1021 F1200 ; 0
G1 X38 Y-39.5 E0.1021 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X41 Y-39.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X41 Y-39.1 E0.0204 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X42 Y-39.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X42 Y-37.5 F18000 ; move to start
G1 X42 Y-35.5 F18000 ; move to start
G1 X44 Y-35.5 E0.1021 F1200 ; 3
G1 X44 Y-37.5 E0.1021 F1200 ; 3
G1 X44 Y-39.5 E0.1021 F1200 ; 3
G1 X42 Y-39.5 E0.1021 F1200 ; 3
G1 X42 Y-37.5 F18000 ; move to start
G1 X44 Y-37.5 E0.1021 F1200 ; 3
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X38 Y-29.5 F18000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X40 Y-29.5 E0.1021 F1200 ; 0
G1 X40 Y-27.5 E0.1021 F1200 ; 0
G1 X40 Y-25.5 E0.1021 F1200 ; 0
G1 X38 Y-25.5 E0.1021 F1200 ; 0
G1 X38 Y-27.5 E0.1021 F1200 ; 0
G1 X38 Y-29.5 E0.1021 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X41 Y-29.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X41 Y-29.1 E0.0204 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X42 Y-29.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X42 Y-27.5 F18000 ; move to start
G1 X42 Y-25.5 F18000 ; move to start
G1 X44 Y-25.5 E0.1021 F1200 ; 3
G1 X44 Y-27.5 E0.1021 F1200 ; 3
G1 X44 Y-29.5 E0.1021 F1200 ; 3
G1 X42 Y-29.5 E0.1021 F1200 ; 3
G1 X42 Y-27.5 F18000 ; move to start
G1 X44 Y-27.5 E0.1021 F1200 ; 3
G1 E-1 F1800 ; retract
G1 X45 Y-29.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X45 Y-27.5 F18000 ; move to start
G1 X47 Y-27.5 E0.1021 F1200 ; 8
G1 X47 Y-29.5 E0.1021 F1200 ; 8
G1 X45 Y-29.5 E0.1021 F1200 ; 8
G1 X45 Y-27.5 E0.1021 F1200 ; 8
G1 X45 Y-25.5 E0.1021 F1200 ; 8
G1 X47 Y-25.5 E0.1021 F1200 ; 8
G1 X47 Y-27.5 E0.1021 F1200 ; 8
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X38 Y-19.5 F18000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X40 Y-19.5 E0.1021 F1200 ; 0
G1 X40 Y-17.5 E0.1021 F1200 ; 0
G1 X40 Y-15.5 E0.1021 F1200 ; 0
G1 X38 Y-15.5 E0.1021 F1200 ; 0
G1 X38 Y-17.5 E0.1021 F1200 ; 0
G1 X38 Y-19.5 E0.1021 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X41 Y-19.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X41 Y-19.1 E0.0204 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X42 Y-19.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X42 Y-17.5 F18000 ; move to start
G1 X42 Y-15.5 F18000 ; move to start
G1 X42 Y-17.5 E0.1021 F1200 ; 4
G1 X44 Y-17.5 E0.1021 F1200 ; 4
G1 X44 Y-15.5 F18000 ; move to start
G1 X44 Y-17.5 E0.1021 F1200 ; 4
G1 X44 Y-19.5 E0.1021 F1200 ; 4
G1 E-1 F1800 ; retract
G1 X45 Y-19.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X45 Y-17.5 F18000 ; move to start
G1 X47 Y-17.5 E0.1021 F1200 ; 6
G1 X47 Y-19.5 E0.1021 F1200 ; 6
G1 X45 Y-19.5 E0.1021 F1200 ; 6
G1 X45 Y-17.5 E0.1021 F1200 ; 6
G1 X45 Y-15.5 E0.1021 F1200 ; 6
G1 X47 Y-15.5 E0.1021 F1200 ; 6
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X38 Y-9.5 F18000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X40 Y-9.5 E0.1021 F1200 ; 0
G1 X40 Y-7.5 E0.1021 F1200 ; 0
G1 X40 Y-5.5 E0.1021 F1200 ; 0
G1 X38 Y-5.5 E0.1021 F1200 ; 0
G1 X38 Y-7.5 E0.1021 F1200 ; 0
G1 X38 Y-9.5 E0.1021 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X41 Y-9.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X41 Y-9.1 E0.0204 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X42 Y-9.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X44 Y-9.5 E0.1021 F1200 ; 5
G1 X44 Y-7.5 E0.1021 F1200 ; 5
G1 X42 Y-7.5 E0.1021 F1200 ; 5
G1 X42 Y-5.5 E0.1021 F1200 ; 5
G1 X44 Y-5.5 E0.1021 F1200 ; 5
G1 E-1 F1800 ; retract
G1 X45 Y-9.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X45 Y-7.5 F18000 ; move to start
G1 X45 Y-5.5 F18000 ; move to start
G1 X45 Y-7.5 E0.1021 F1200 ; 4
G1 X47 Y-7.5 E0.1021 F1200 ; 4
G1 X47 Y-5.5 F18000 ; move to start
G1 X47 Y-7.5 E0.1021 F1200 ; 4
G1 X47 Y-9.5 E0.1021 F1200 ; 4
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X38 Y0.5 F18000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X40 Y0.5 E0.1021 F1200 ; 0
G1 X40 Y2.5 E0.1021 F1200 ; 0
G1 X40 Y4.5 E0.1021 F1200 ; 0
G1 X38 Y4.5 E0.1021 F1200 ; 0
G1 X38 Y2.5 E0.1021 F1200 ; 0
G1 X38 Y0.5 E0.1021 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X41 Y0.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X41 Y0.9 E0.0204 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X42 Y0.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X42 Y2.5 F18000 ; move to start
G1 X44 Y2.5 E0.1021 F1200 ; 6
G1 X44 Y0.5 E0.1021 F1200 ; 6
G1 X42 Y0.5 E0.1021 F1200 ; 6
G1 X42 Y2.5 E0.1021 F1200 ; 6
G1 X42 Y4.5 E0.1021 F1200 ; 6
G1 X44 Y4.5 E0.1021 F1200 ; 6
G1 E-1 F1800 ; retract
G1 X45 Y0.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X45 Y2.5 F18000 ; move to start
G1 X45 Y4.5 F18000 ; move to start
G1 X47 Y4.5 E0.1021 F1200 ; 2
G1 X47 Y2.5 E0.1021 F1200 ; 2
G1 X45 Y2.5 E0.1021 F1200 ; 2
G1 X45 Y0.5 E0.1021 F1200 ; 2
G1 X47 Y0.5 E0.1021 F1200 ; 2
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop

; FINISH
;
M107 ; Turn off fan
M400 ; Finish moving
M0 ; end
