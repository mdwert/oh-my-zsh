if [[ -r /etc/debian_version ]] ; then
    alias acs='apt-cache search'
    alias acsh='apt-cache show'
    alias acm='apt-cache madison'
    alias acp='apt-cache policy'
    alias adg="sudo apt-get dist-upgrade"
    alias agi="noglob sudo apt-get install"
    alias ati="noglob sudo aptitude install"
    alias ag="sudo apt-get upgrade"
    alias au="sudo apt-get update"
    alias agr="noglob sudo apt-get remove"
    alias aptup="sudo aptitude update ; sudo aptitude safe-upgrade"
    alias ge='grep-excuses'
    alias orphand='sudo deborphan | xargs sudo apt-get -y remove --purge'
    alias cleanup='sudo apt-get autoclean && sudo apt-get autoremove && sudo apt-get clean'
    
    
#    upgrade() {
#        emulate -L zsh
#        if [[ -z $1 ]] ; then
#            $SUDO apt-get update
#            $SUDO apt-get -u upgrade
#        else
#            ssh $1 $SUDO apt-get update
#            # ask before the upgrade
#            local dummy
#            ssh $1 $SUDO apt-get --no-act upgrade
#            echo -n 'Process the upgrade?'
#            read -q dummy
#            if [[ $dummy == "y" ]] ; then
#                ssh $1 $SUDO apt-get -u upgrade --yes
#            fi
#        fi
#    }
fi
