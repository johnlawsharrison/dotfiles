export ARCHFLAGS="-arch x86_64"
export GOPATH="$HOME/go"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# Set default editor to vim
export EDITOR=/usr/bin/vim

# set up PATH
export PATH=/usr/local/bin:/usr/bin:/bin/:usr/sbin:/sbin:$GOPATH/bin:$HOME/platform-tools

#
# Terminal Stuff
#

alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias ll='ls -FGlAhp'
alias less='less -FSRXc'
cd() { builtin cd "$@"; ll; }
alias cd..='cd ../'
alias ..='cd ../'
alias ...='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias edit='subl'				            # edit:		Open any file in Sublime
alias f='open -a Finder ./'			        # f:		Opens current directory in finder
alias ~='cd ~'					            # ~:		Go home
alias cl='clear'				            # cl:		Clear terminal display
alias path='echo -e ${PATH//:\\n}'		    # path:		Echo all executable Paths
alias DT='tee ~/Desktop/terminalOut.txt'	# DT:		Pipe content to file on MacOS Desktop

# Git aliases
alias gs='git status'
alias gl='git log'
alias gd='git diff'
alias gp='git pull'
alias ga='git add'