### Always have the terminal window on top on linux.

It's a bit of a bodge BUT works. It's as simple as:

Requires wmctrl for window control.

`sudo apt-get install wmctrl`

`
# Get the ID of the last opened window
window_id=$(wmctrl -l | tail -n 1 | awk '{print $1}')

# Set the window to always be on top
wmctrl -i -r "$window_id" -b add,above
`

Then edit your .bashrc file (in your home directory), and add the line:
`source top_terminal/last_window_top.sh`