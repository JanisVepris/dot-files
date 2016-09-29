alias tmux='TERM=xterm-256color tmux'
alias tmux-reload='tmux source-file ~/.tmux.conf'

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

RED="\[\033[0;31m\]"
PURPLE="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;34m\]"
NO_COLOR="\[\033[0m\]"
BOLD="\[\033[1m"

PS1="$GREEN[\u]$YELLOW [\w] $BLUE\033[1m\$(parse_git_branch)\033[0m$NO_COLOR\n\$ "

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

cd ~/www
