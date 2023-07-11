#!/bin/bash
# Get the ID of the last opened window
window_id=$(wmctrl -l | tail -n 1 | awk '{print $1}')

# Set the window to always be on top
wmctrl -i -r "$window_id" -b add,above
