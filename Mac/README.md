Mac configurations
==================

To be able to use right ctrl and arrow keys as in a Linux terminal the following steps should be performed.

1. Remove keybinding in MacOS
 * System settings -> Keyboard -> Mission Control
 * Untack the "Move left a space" and "Move right a space" options
2. iTerm2 -> Preferences -> Profiles -> Keys
 * Change "^<-" to: "Send Escape Sequence" and "[1;5D"
 * Change "^->" to: "Send Escape Sequence" and "[1;5C"
3. Copy inputrc to ~/.inputrc
4. Source the new file or reload terminal
