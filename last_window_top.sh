#!/bin/bash
#!/bin/bash

# Get the ID of the last opened window that contains the keyword 'Terminal'
window_id=$(wmctrl -l | awk '$0 ~ /Terminal/ {id=$1} END{print id}')

# Set the window to always be on top
wmctrl -i -r "$window_id" -b add,above

