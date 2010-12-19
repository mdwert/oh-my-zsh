function test-theme {
export ZSH_THEME="$(basename $1 .zsh-theme)"
source $ZSH/oh-my-zsh.sh
}
