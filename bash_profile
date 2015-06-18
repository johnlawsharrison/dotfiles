if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Set default editor to vim
export EDITOR=/usr/bin/vim

# cloudant admcurl
alias admcurl="curl -s --config ~/.acurl "

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

# Networking
alias myip='curl ip.appspot.com'		# myip: 	Public facing IP Address
alias netCons='lsof -i'				# netcons:	Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'	# flushDNS:	Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'		# lsock:	Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs

#   topForever:  Continual 'top' listing (every 10 seconds)
#   -----------------------------------------------------

alias topForever='top -l 9999999 -s 10 -o cpu'

#   memHogsTop, memHogsPs:  Find memory hogs
#   -----------------------------------------------------
alias memHogsTop='top -l 1 -o rsize | head -20'
alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'
