###Aptitude stuff: TODO: Check environment before adding###
alias install='sudo apt-get install'
alias update='sudo apt-get update'
alias remove='sudo apt-get remove'
alias search='apt-cache search'
alias upgrade='sudo apt-get update && sudo apt-get upgrade'
alias dupgrade='sudo apt-get update && sudo apt-get dist-upgrade'
alias orphand='sudo deborphan | xargs sudo apt-get -y remove --purge'
alias cleanup='sudo apt-get autoclean && sudo apt-get autoremove && sudo apt-get clean'
alias updatedb='sudo updatedb'
alias sources='sudo vim /etc/apt/sources.list'
alias info='apt-cache show'

#alias aza='ssh -X mdwert@azathoth'
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias l='ls -CF'
alias sl='ls'
alias lsa='ls -lah'
alias lls='ls -l -h -g -F --color=auto'
alias lsv='ls -aCF' #List files horizontally
alias lss='la -am' #sort by size
alias lsd='ls -latr' #sort by date

alias svi='sudo vim'

alias reload='source ~/.zshrc'

#Ask before clobbering a file, use -f to override
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

#Use human-readable filesizes
alias du='du -h'
alias df='df -h'

###Set directory Colors
#eval "`dircolors -b ~/.dircolors`"
