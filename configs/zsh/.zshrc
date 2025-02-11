source $HOME/.zshenv
export ZSH_COMPDUMP=$HOME/.oh-my-zsh/cache/.zcompdump-$HOST

ZSH_THEME="janis"

COMPLETION_WAITING_DOTS="true"

plugins=(
 z
 zsh-autosuggestions
 zsh-syntax-highlighting
 zsh-bat
 zsh-256color
 fzf-tab
 history
 artisan
)

source $HOME/.oh-my-zsh/oh-my-zsh.sh

stty -ixon

source $HOME/dot-files/configs/zsh/aliasrc
ulimit -n 8192
TERM=xterm-256color

# bun completions
# [ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

