; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Printer: Artemis
; Filament: Atomic PETG -- Dark Cherry Red
; Created: Mon Oct 25 2021 20:27:37 GMT-0700 (Pacific Daylight Time)
; URL: https://marlinfw.org/tools/lin_advance/k-factor.html
; Preprocessing steps:
;  - delete everything in this file between "print the anchor frame" and "FINISH"
;  - visit above URL and plug in below values (tweak to taste)
;  - generate gcode and copy evertyhing between "print the anchor frame" and "FINISH"
;  - paste into this file in appropriate spot (optionally do settings too)
;  - %s/M900 K\(\d*\.\?\d*\)/M572 D0 S\1/
;  - %s/M117 K\(\d\+\.\?\d*\)/M291 T3 P"\1"/
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.5 mm
; Nozzle Temperature = 225 °C
; Bed Temperature = 70 °C
; Retraction Distance = 2.5 mm
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
; Retract Speed = 4200 mm/min
; Unretract Speed = 4200 mm/min
; Printing Acceleration = 500 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Linear Advance Version = 1.5
; Starting Value Factor = 0.65
; Ending Value Factor = 1
; Factor Stepping = 0.05
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
M140 S70
M109 S225
M98 P"0:/macros/sys/prime_nozzle.g"
M190 S70
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
G1 X-44 Y-33 F18000 ; move to start
G1 X-44 Y8 E2.25 F1200 ; print line
G1 X-43.4 Y8 F18000 ; move to start
G1 X-43.4 Y-33 E2.25 F1200 ; print line
G1 E-2.5 F4200 ; retract
G1 X36 Y-33 F18000 ; move to start
G1 E2.5 F4200 ; un-retract
G1 X36 Y8 E2.25 F1200 ; print line
G1 X35.4 Y8 F18000 ; move to start
G1 X35.4 Y-33 E2.25 F1200 ; print line
G1 E-2.5 F4200 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X-44 Y-30 F18000 ; move to start
M572 D0 S0.65 ; set K-factor
M291 T3 P"0.65" ; 
G1 E2.5 F4200 ; un-retract
G1 X-24 Y-30 E0.9978 F1200 ; print line
G1 X16 Y-30 E1.9956 F4200 ; print line
G1 X36 Y-30 E0.9978 F1200 ; print line
G1 E-2.5 F4200 ; retract
G1 X-44 Y-25 F18000 ; move to start
M572 D0 S0.7 ; set K-factor
M291 T3 P"0.7" ; 
G1 E2.5 F4200 ; un-retract
G1 X-24 Y-25 E0.9978 F1200 ; print line
G1 X16 Y-25 E1.9956 F4200 ; print line
G1 X36 Y-25 E0.9978 F1200 ; print line
G1 E-2.5 F4200 ; retract
G1 X-44 Y-20 F18000 ; move to start
M572 D0 S0.75 ; set K-factor
M291 T3 P"0.75" ; 
G1 E2.5 F4200 ; un-retract
G1 X-24 Y-20 E0.9978 F1200 ; print line
G1 X16 Y-20 E1.9956 F4200 ; print line
G1 X36 Y-20 E0.9978 F1200 ; print line
G1 E-2.5 F4200 ; retract
G1 X-44 Y-15 F18000 ; move to start
M572 D0 S0.8 ; set K-factor
M291 T3 P"0.8" ; 
G1 E2.5 F4200 ; un-retract
G1 X-24 Y-15 E0.9978 F1200 ; print line
G1 X16 Y-15 E1.9956 F4200 ; print line
G1 X36 Y-15 E0.9978 F1200 ; print line
G1 E-2.5 F4200 ; retract
G1 X-44 Y-10 F18000 ; move to start
M572 D0 S0.85 ; set K-factor
M291 T3 P"0.85" ; 
G1 E2.5 F4200 ; un-retract
G1 X-24 Y-10 E0.9978 F1200 ; print line
G1 X16 Y-10 E1.9956 F4200 ; print line
G1 X36 Y-10 E0.9978 F1200 ; print line
G1 E-2.5 F4200 ; retract
G1 X-44 Y-5 F18000 ; move to start
M572 D0 S0.9 ; set K-factor
M291 T3 P"0.9" ; 
G1 E2.5 F4200 ; un-retract
G1 X-24 Y-5 E0.9978 F1200 ; print line
G1 X16 Y-5 E1.9956 F4200 ; print line
G1 X36 Y-5 E0.9978 F1200 ; print line
G1 E-2.5 F4200 ; retract
G1 X-44 Y0 F18000 ; move to start
M572 D0 S0.95 ; set K-factor
M291 T3 P"0.95" ; 
G1 E2.5 F4200 ; un-retract
G1 X-24 Y0 E0.9978 F1200 ; print line
G1 X16 Y0 E1.9956 F4200 ; print line
G1 X36 Y0 E0.9978 F1200 ; print line
G1 E-2.5 F4200 ; retract
G1 X-44 Y5 F18000 ; move to start
;
; Mark the test area for reference
M291 T3 P"0"
M572 D0 S0 ; Set K-factor 0
G1 X-24 Y10 F18000 ; move to start
G1 E2.5 F4200 ; un-retract
G1 X-24 Y30 E0.9978 F1200 ; print line
G1 E-2.5 F4200 ; retract
G1 X16 Y10 F18000 ; move to start
G1 E2.5 F4200 ; un-retract
G1 X16 Y30 E0.9978 F1200 ; print line
G1 E-2.5 F4200 ; retract
G1 Z0.3 F1200 ; zHop
;
; print K-values
;
G1 X38 Y-32 F18000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E2.5 F4200 ; un-retract
G1 X40 Y-32 E0.0998 F1200 ; 0
G1 X40 Y-30 E0.0998 F1200 ; 0
G1 X40 Y-28 E0.0998 F1200 ; 0
G1 X38 Y-28 E0.0998 F1200 ; 0
G1 X38 Y-30 E0.0998 F1200 ; 0
G1 X38 Y-32 E0.0998 F1200 ; 0
G1 E-2.5 F4200 ; retract
G1 X41 Y-32 F18000 ; move to start
G1 E2.5 F4200 ; un-retract
G1 X41 Y-31.6 E0.02 F1200 ; dot
G1 E-2.5 F4200 ; retract
G1 X42 Y-32 F18000 ; move to start
G1 E2.5 F4200 ; un-retract
G1 X42 Y-30 F18000 ; move to start
G1 X44 Y-30 E0.0998 F1200 ; 6
G1 X44 Y-32 E0.0998 F1200 ; 6
G1 X42 Y-32 E0.0998 F1200 ; 6
G1 X42 Y-30 E0.0998 F1200 ; 6
G1 X42 Y-28 E0.0998 F1200 ; 6
G1 X44 Y-28 E0.0998 F1200 ; 6
G1 E-2.5 F4200 ; retract
G1 X45 Y-32 F18000 ; move to start
G1 E2.5 F4200 ; un-retract
G1 X47 Y-32 E0.0998 F1200 ; 5
G1 X47 Y-30 E0.0998 F1200 ; 5
G1 X45 Y-30 E0.0998 F1200 ; 5
G1 X45 Y-28 E0.0998 F1200 ; 5
G1 X47 Y-28 E0.0998 F1200 ; 5
G1 E-2.5 F4200 ; retract
G1 Z0.3 F1200 ; zHop
G1 X38 Y-22 F18000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E2.5 F4200 ; un-retract
G1 X40 Y-22 E0.0998 F1200 ; 0
G1 X40 Y-20 E0.0998 F1200 ; 0
G1 X40 Y-18 E0.0998 F1200 ; 0
G1 X38 Y-18 E0.0998 F1200 ; 0
G1 X38 Y-20 E0.0998 F1200 ; 0
G1 X38 Y-22 E0.0998 F1200 ; 0
G1 E-2.5 F4200 ; retract
G1 X41 Y-22 F18000 ; move to start
G1 E2.5 F4200 ; un-retract
G1 X41 Y-21.6 E0.02 F1200 ; dot
G1 E-2.5 F4200 ; retract
G1 X42 Y-22 F18000 ; move to start
G1 E2.5 F4200 ; un-retract
G1 X42 Y-20 F18000 ; move to start
G1 X42 Y-18 F18000 ; move to start
G1 X44 Y-18 E0.0998 F1200 ; 7
G1 X44 Y-20 E0.0998 F1200 ; 7
G1 X44 Y-22 E0.0998 F1200 ; 7
G1 E-2.5 F4200 ; retract
G1 X45 Y-22 F18000 ; move to start
G1 E2.5 F4200 ; un-retract
G1 X47 Y-22 E0.0998 F1200 ; 5
G1 X47 Y-20 E0.0998 F1200 ; 5
G1 X45 Y-20 E0.0998 F1200 ; 5
G1 X45 Y-18 E0.0998 F1200 ; 5
G1 X47 Y-18 E0.0998 F1200 ; 5
G1 E-2.5 F4200 ; retract
G1 Z0.3 F1200 ; zHop
G1 X38 Y-12 F18000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E2.5 F4200 ; un-retract
G1 X40 Y-12 E0.0998 F1200 ; 0
G1 X40 Y-10 E0.0998 F1200 ; 0
G1 X40 Y-8 E0.0998 F1200 ; 0
G1 X38 Y-8 E0.0998 F1200 ; 0
G1 X38 Y-10 E0.0998 F1200 ; 0
G1 X38 Y-12 E0.0998 F1200 ; 0
G1 E-2.5 F4200 ; retract
G1 X41 Y-12 F18000 ; move to start
G1 E2.5 F4200 ; un-retract
G1 X41 Y-11.6 E0.02 F1200 ; dot
G1 E-2.5 F4200 ; retract
G1 X42 Y-12 F18000 ; move to start
G1 E2.5 F4200 ; un-retract
G1 X42 Y-10 F18000 ; move to start
G1 X44 Y-10 E0.0998 F1200 ; 8
G1 X44 Y-12 E0.0998 F1200 ; 8
G1 X42 Y-12 E0.0998 F1200 ; 8
G1 X42 Y-10 E0.0998 F1200 ; 8
G1 X42 Y-8 E0.0998 F1200 ; 8
G1 X44 Y-8 E0.0998 F1200 ; 8
G1 X44 Y-10 E0.0998 F1200 ; 8
G1 E-2.5 F4200 ; retract
G1 X45 Y-12 F18000 ; move to start
G1 E2.5 F4200 ; un-retract
G1 X47 Y-12 E0.0998 F1200 ; 5
G1 X47 Y-10 E0.0998 F1200 ; 5
G1 X45 Y-10 E0.0998 F1200 ; 5
G1 X45 Y-8 E0.0998 F1200 ; 5
G1 X47 Y-8 E0.0998 F1200 ; 5
G1 E-2.5 F4200 ; retract
G1 Z0.3 F1200 ; zHop
G1 X38 Y-2 F18000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E2.5 F4200 ; un-retract
G1 X40 Y-2 E0.0998 F1200 ; 0
G1 X40 Y0 E0.0998 F1200 ; 0
G1 X40 Y2 E0.0998 F1200 ; 0
G1 X38 Y2 E0.0998 F1200 ; 0
G1 X38 Y0 E0.0998 F1200 ; 0
G1 X38 Y-2 E0.0998 F1200 ; 0
G1 E-2.5 F4200 ; retract
G1 X41 Y-2 F18000 ; move to start
G1 E2.5 F4200 ; un-retract
G1 X41 Y-1.6 E0.02 F1200 ; dot
G1 E-2.5 F4200 ; retract
G1 X42 Y-2 F18000 ; move to start
G1 E2.5 F4200 ; un-retract
G1 X44 Y-2 E0.0998 F1200 ; 9
G1 X44 Y0 E0.0998 F1200 ; 9
G1 X42 Y0 E0.0998 F1200 ; 9
G1 X42 Y2 E0.0998 F1200 ; 9
G1 X44 Y2 E0.0998 F1200 ; 9
G1 X44 Y0 E0.0998 F1200 ; 9
G1 E-2.5 F4200 ; retract
G1 X45 Y-2 F18000 ; move to start
G1 E2.5 F4200 ; un-retract
G1 X47 Y-2 E0.0998 F1200 ; 5
G1 X47 Y0 E0.0998 F1200 ; 5
G1 X45 Y0 E0.0998 F1200 ; 5
G1 X45 Y2 E0.0998 F1200 ; 5
G1 X47 Y2 E0.0998 F1200 ; 5
G1 E-2.5 F4200 ; retract
G1 Z0.3 F1200 ; zHop
; FINISH
;
M107 ; Turn off fan
M400 ; Finish moving
M0 ; end
