; Home if necessary
if !move.axes[0].homed || !move.axes[1].homed || !move.axes[2].homed
    G28
