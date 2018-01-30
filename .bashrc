
alias ll='ls -al' 
alias vimrc='vim ~/dotfiles/.vimrc' 
alias bashrc='vim ~/dotfiles/.bashrc' 
alias sourceb='source ~/.bash_profile' 

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

