#!/bin/bash
#!/bin/bash

# Get the name of the user
user_name=$USER

# Get the ID of the last opened window that contains the user's name

window_id=$(wmctrl -l | awk '$0 ~ /Terminal/ {id=$1} END{print id}')

echo "$window_id"
# Set the window to always be on top
wmctrl -i -r "$window_id" -b add,above

