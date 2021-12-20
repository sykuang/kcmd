#!/bin/zsh

function vrg(){
    if [[ -z $1 ]];then
        return
    fi
    rg --vimgrep --color=always $@ |fzf  --ansi --disabled --bind "enter:execute(nvim {})"
}
