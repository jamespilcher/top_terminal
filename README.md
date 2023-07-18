### Always have the terminal window on top on linux.

Requires wmctrl for window control.

`sudo apt-get install wmctrl`

It's a bit of a bodge BUT works (kind of) The idea is that the .bashrc file is ran everytime a new bash terminal is opened. Therefore in .bashrc, we can source the following script:

```
# Get the ID of the last opened window that contains the keyword 'Terminal'
window_id=$(wmctrl -l | awk '$0 ~ /Terminal/ {id=$1} END{print id}')

# Set the window to always be on top
wmctrl -i -r "$window_id" -b add,above
```

Edit your .bashrc file (in your home directory), and add the line:
`source /home/<your_user>/top_terminal/last_window_top.sh`

This assumes you have the folder top_terminal in your user directory.

<i> if you have done this incorrectly, the terminal will tell you at the top.</i>

Slight flaw:
- If you previously un-always-on-top a terminal window, but open a new tab (in any window), it will trigger the last opened terminal to be on top...
