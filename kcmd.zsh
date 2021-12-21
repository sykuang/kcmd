#!/bin/zsh

function vrg(){
    if [[ -z $1 ]];then
        return
    fi
    rg --vimgrep --color=always $@ |fzf  --ansi --disabled --bind "enter:execute(nvim {})"
}

function pdiff(){
  if [[  "$#" -ne 2 ]];then
    echo "pdiff other_path file_path"
    return
  fi
  vimdiff $2 $1/$2
}
