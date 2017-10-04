Mac configurations
==================

## iTerm ctrl modification
To be able to use right ctrl and arrow keys as in a Linux terminal the
following steps should be performed.

1. Remove keybinding in MacOS
 * System settings -> Keyboard -> Shortcuts -> Mission Control
 * Untack the "Move left a space" and "Move right a space" options
2. iTerm2 -> Preferences -> Profiles -> Keys
 * Change/Verify "^<-" to: "Send Escape Sequence" and "[1;5D"
 * Change/Verify "^->" to: "Send Escape Sequence" and "[1;5C"
3. Copy inputrc to ~/.inputrc
4. Source the new file or reload terminal


## Change computer name in terminal display

```
sudo scutil --set ComputerName "newname"
sudo scutil --set LocalHostName "newname"
sudo scutil --set HostName "newname"
dscacheutil -flushcache
```
Then restart the computer.
