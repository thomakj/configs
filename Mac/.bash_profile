#
# .bash_profile file for MacBook
#

#
# Aliasses
#

alias ll='ls -l'
alias la='ls -la'
alias l='ls -lA'

alias cd..='cd ..'

# To get programmable completion feature on git 
# it is necessary to use git installed with brew:
# brew install git
alias git='/usr/local/bin/git'

#
# Environment variables
#

# Java and apache
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_20.jdk/Contents/Home
export M2_HOME=/Users/thomas/Applications/apache-maven-3.2.3
export M2=$M2_HOME/bin
export PATH=$PATH:$M2:$JAVA_HOME

# Terminal colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# WeChall tokens
export WECHALLUSER="Ciphers"
export WECHALLTOKEN="43F55-23233-5E97A-D6096-A0CDC-09587"

#
# Enable programmable completion features
#
# Remember to infall the program running:
# brew install bash-completion 
#

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
