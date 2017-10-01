#  	---------------------------------------------------------------------------
#
#	Description:  This file holds all my BASH configurations and aliases
#	Inspiration from http://natelandau.com/my-mac-osx-bash_profile/
#
#	Sections:
#	1.   Environment Configuration
#	2.   Aliasses
#	3.   File and Folder Management
#	4.   Networking
#	5.   Misc
#
#  	---------------------------------------------------------------------------

#   -------------------------------
#	1.  ENVIRONMENT CONFIGURATION
#   -------------------------------

# Java and Maven
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_40.jdk/Contents/Home
export M2_HOME=/Users/thomas/Applications/apache-maven-3.2.5
export M2=$M2_HOME/bin
export PATH=/usr/local/bin/:$PATH:$M2:$JAVA_HOME

# Changing terminal user, host and path color and layout
#export PS1="\[\033[31m\]\u\[\033[m\]@\[\033[31m\]\h:\[\033[36m\]\w\[\033[m\]\$ "
#export PS1="\[\033[31m\]\h:\[\033[36m\]\W\[\033[m\]\$ "
export PS1='\[\033[31m\]\h:\[\033[36m\]\w:\[\033[35m\]$(__git_ps1 " (%s)")\n\[\033[m\]> '
#export PS1='\[\033[31m\]\h:\[\033[36m\]\w:\[\033[35m\]$(__git_ps1 " (%s)")\n\[\033[4;31m\][\d]\[\033[m\] > '
#export PS1='\u@\h:\w$(__git_ps1 " (%s)") \$ '

# Terminal colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxCxegedabagaced

# Setting Local Language settings
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# WeChall tokens
export WECHALLUSER="Ciphers"
export WECHALLTOKEN="43F55-23233-5E97A-D6096-A0CDC-09587"

#   -------------------------------
# 	2.	Aliasses
#   -------------------------------

# ls
alias ll='ls -l'
alias la='ls -la'
alias l='ls -lA'

# cd
alias cd..='cd ..'

# Copy paste
alias copy='pbcopy'
alias paste='pbpaste'

# App aliases
alias subl='/Applications/Sublime\ Text.app/Contents/MacOS/Sublime\ Text'
alias openssl='/usr/local/opt/openssl/bin/openssl'
alias msfconsole='launchctl load -w /usr/local/Cellar/postgresql/9.4.1/homebrew.mxcl.postgresql.plist && msfconsole'
alias myip='curl ip.appspot.com && echo'            # myip:         Public facing IP Address
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections


#   -------------------------------
#   3.  FILE AND FOLDER MANAGEMENT
#   -------------------------------

#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
    extract () {
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
    }

#   ---------------------------
#   4.  NETWORKING
#   ---------------------------

#   ii:  display useful host related informaton
#   -------------------------------------------------------------------
    ii() {
        echo -e "\nYou are logged on ${RED}$HOST"
        echo -e "\nAdditionnal information:$NC " ; uname -a
        echo -e "\n${RED}Users logged on:$NC " ; w -h
        echo -e "\n${RED}Current date :$NC " ; date
        echo -e "\n${RED}Machine stats :$NC " ; uptime
        echo -e "\n${RED}Current network location :$NC " ; scselect
        echo -e "\n${RED}Public facing IP Address :$NC " ;myip
        #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
        echo
    }

#   ---------------------------
#   5.  Misc
#   ---------------------------

# Enable programmable completion features. Remember to infall the program running: brew install bash-completion, and uncomment the alias of git
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
