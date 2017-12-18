function parse_git_branch { 
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' 
} 

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
export PS1="\n\[\e[1;32m\]\t \[\e[1;33m\][\w] \[\e[1;34m\]\$(parse_git_branch)\n\[\e[1;37m\]\h:\u\\$ \[\e[0m\]"
export PATH=$PATH:$HOME/.nodebrew/current/bin
export PATH=$PATH:/Users/yomura/Library/Android/sdk/platform-tools
source ~/.bashrc

# pyenv
eval export PATH="/Users/yomura/.pyenv/shims:${PATH}"
export PYENV_SHELL=bash
source '/usr/local/Cellar/pyenv/1.1.5/libexec/../completions/pyenv.bash'
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
