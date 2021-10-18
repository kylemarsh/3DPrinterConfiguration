; Home if necessary
if !move.axes[0].homed || !move.axes[1].homed || !move.axes[2].homed
    G28
else
    M98 P"0:/macros/sys/stow_effector.g"
