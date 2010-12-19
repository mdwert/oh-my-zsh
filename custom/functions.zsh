# Easy extract
extract () {
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       rar x $1       ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1        ;;
          *)           echo "don't know how to extract '$1'..." ;;
      esac
  else
      echo "'$1' is not a valid file!"
  fi
}

# Makes directory then moves into it
function mkcdr {
    mkdir -p -v $1
    cd $1
}

# Creates an archive from given directory
mktar() { tar cvf  "${1%%/}.tar"     "${1%%/}/"; }
mktgz() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }
mktbz() { tar cvjf "${1%%/}.tar.bz2" "${1%%/}/"; }

######################################################
#----------Encrypt/Decrypt---------------------------#
#requires gpg/gpg2
encrypt ()
{
	gpg -ac --no-options "$1"
}

decrypt ()
{
	gpg --no-options "$1"
}

# Get IP (call with myip)
function myip {
  myip=`elinks -dump http://checkip.dyndns.org:8245/`
  echo "${myip}"
}

cd() {
	if [ -n "$1" ]; then
	  builtin cd "$@" && ls
	else
	  builtin cd ~ && ls
	fi
}

function apt-history(){
      case "$1" in
        install)
              cat /var/log/dpkg.log | grep 'install '
              ;;
        upgrade|remove)
              cat /var/log/dpkg.log | grep $1
              ;;
        rollback)
              cat /var/log/dpkg.log | grep upgrade | \
                  grep "$2" -A10000000 | \
                  grep "$3" -B10000000 | \
                  awk '{print $4"="$5}'
              ;;
        *)
              cat /var/log/dpkg.log
              ;;
      esac
}

up(){
  local d=""
  limit=$1
  for ((i=1; i <= limit; i++))
    do
      d=$d/..
    done
  d=$(echo $d | sed 's/^\///')
  if [ -z "$d" ]; then
    d=..
  fi
  cd $d
}

# overwrite a file with zeroes - http://www.shell-fu.org/lister.php?id=94  
zero() {  
  case "$1" in  
    "")     echo "Usage: zero <file>"  
            return -1;  
  esac  
  filesize=`wc -c  "$1" | awk '{print $1}'`  
  dd if=/dev/zero of=$1 count=$filesize bs=1  
}  

## Gemset function from beginrescueend.com - credited to batasrki
function gemdir {
    if [[ -z "$1" ]] ; then
        echo "gemdir expects a parameter, which should be a valid RVM ruby selector"
    else
        rvm "$1"
        cd $(rvm gemdir)
        pwd
    fi
}
