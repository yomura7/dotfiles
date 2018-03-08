export LSCOLORS=cxfxcxdxbxegedabagacad

function findf() {
  echo $1
  find . -type f -name "*$1*"
}
function cdls()
{
    \cd "$@" && ls
}

alias cd="cdls"
alias bd="cd ../"
alias ls='ls -G'
alias ll='ls -G -l -a'
alias vimrc='vim ~/dotfiles/.vimrc' 
alias bashrc='vim ~/dotfiles/.bashrc' 
alias sb='source ~/.bash_profile' 
alias oa='open -a atom'
alias server='python -m http.server 3000'
alias sushi='sh ~/script/sushi.sh'

command pyenv rehash 2>/dev/null
pyenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(pyenv "sh-$command" "$@")";;
  *)
    command pyenv "$command" "$@";;
  esac
}

