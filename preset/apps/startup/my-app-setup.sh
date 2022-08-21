#!/bin/bash

# | @file my-app-setup.sh
# | This file is similar to setup.sh except it is 
# |     decoupled from setup.sh, allowing you to 
# |     mess with it without breaking setup.sh.

# | Reminder, `\x1b[32m` represents is an ANSI 
# |     escape code for green foreground color, 
# |     and `x1b[0m` represents an ANSI escape code
# |     for reset the ANSI foreground color to what it 
# |     was before.
echo -e "my-app-startup> \x1b[32mrunning\x1b[0m"

# | If you make your own apps, install them here!
# | Inspect setup.sh for examples of how to install your
# |     own quickdirs utilities.

# | Reminder, `\x1b[32m` represents is an ANSI 
# |     escape code for green foreground color, 
# |     and `x1b[0m` represents an ANSI escape code
# |     for reset the ANSI foreground color to what it 
# |     was before.
echo -e "my-app-startup> \x1b[32mdone\x1b[0m"
