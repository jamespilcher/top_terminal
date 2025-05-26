# New Terminal Window Defaults to 'Always on Top' [GNOME]
## Idea
The `.bashrc` script is executed each a new bash terminal is opened so we add the following steps:
1. Get the ID of the last opened window that contains the keyword 'Terminal'
2. Set the window with that ID to always be on top.

## Installation
`sudo apt-get install wmctrl`

Option 1:
- Add the contents of `last_window_top.sh` to your `.bashrc` file.

Option 2:
- Clone this repo and add the line `source <PATH_TO>/last_window_top.sh` to your `.bashrc` file.

<i>Note: `.bashrc` is located in your home directory.</i>
## Current Limitation
- If you <i>un-always-on-top</i> a terminal window but open a new terminal session (e.g., a tab in any terminal window---therefore rerunning bashrc), it will make the last opened terminal window to be on top.

**This is _probably_ fixable (bodge-able) in two ways:**
1. If possible, add a time-check condition for _always-on-topping_ (i.e., if the window was created just before bashrc ran, then make it on-top, otherwise don't.).
2. Store the window/process IDs and their creation time in a `/tmp` file and check that to make sure it doesn't _always-on-top_ the same window twice.
