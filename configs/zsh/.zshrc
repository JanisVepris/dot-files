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
 # history
 artisan
)

source $HOME/.oh-my-zsh/oh-my-zsh.sh

stty -ixon

source $DOT_FILES_DIR/configs/zsh/aliasrc
ulimit -n 8192
TERM=xterm-256color

ZSH_HIGHLIGHT_STYLES[command]="fg=$DOT_C_ACCENT,bold"
ZSH_HIGHLIGHT_STYLES[arg0]="fg=$DOT_C_SECONDARY"
ZSH_HIGHLIGHT_STYLES[autodirectory]="fg=$DOT_C_DIM,underline"
ZSH_HIGHLIGHT_STYLES[global-alias]="fg=$DOT_C_SECONDARY,underline"
ZSH_HIGHLIGHT_STYLES[suffix-alias]="fg=$DOT_C_SECONDARY,undeline"

# bun completions
# [ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"


# sentry
fpath=("/Users/janisvepris/.local/share/zsh/site-functions" $fpath)
