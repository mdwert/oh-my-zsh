vman() {
    emulate -L zsh
    man $* | col -b | view -c 'set ft=man nomod nolist' -
}
