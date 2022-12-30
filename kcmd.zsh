#!/bin/zsh

function vrg(){
  if [[ -z $1 ]];then
    return
  fi
  if [[ -z $EDITOR ]];then
    if (( $+commands[nvim] ));then
      EDITOR=nvim
    elif (( $+commands[vim] ));then
      EDITOR=vim
    elif (( $+commands[vi] ));then
      EDITOR=vi
    else
      echo "No editor exist."
      return
    fi
  fi
  rg --vimgrep --color=always $@ |fzf  --ansi --disabled --bind "enter:execute($EDITOR {})"
}

alias jj="jobs"
alias cgrep="rg -t c -t cpp"
alias mgrep="rg -t make"
alias bb="byobu"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
