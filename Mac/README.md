Mac configurations
==================

To be able to use right ctrl and arrow keys as in a Linux terminal the following steps should be performed.

# Remove keybinding in MacOS
## System settings -> Keyboard -> Mission Control
### Untack the "Move left a space" and "Move right a space" options
## iTerm2 -> Preferences -> Profiles -> Keys
### Change "^<-" to: "Send Escape Sequence" and "[1;5D"
### Change "^->" to: "Send Escape Sequence" and "[1;5C"
## Copy inputrc to ~/.inputrc
