### Always have the terminal window on top on linux.

Requires wmctrl for window control.

`sudo apt-get install wmctrl`

It's a bit of a bodge BUT works. The idea is that the .bashrc file is ran everytime a new bash terminal is opened. Therefore in .bashrc, we can source the following script:

```
# Get the ID of the last opened window
window_id=$(wmctrl -l | tail -n 1 | awk '{print $1}')

# Set the window to always be on top
wmctrl -i -r "$window_id" -b add,above
```

The last opened window will be the new terminal!

Edit your .bashrc file (in your home directory), and add the line:
`source top_terminal/last_window_top.sh`

This assumes you have the folder top_terminal in your home directory.

<i> if you have done this incorrectly, the terminal will tell you at the top.