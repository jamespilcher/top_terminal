# New Terminal Window Defaults to 'Always on Top'.

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
- If you previously <i>un-always-on-top</i> a terminal window, but open a new tab (in any window), it will trigger the last opened terminal to be on top. PRs are welcome!
