export DOT_FILES_DIR=$HOME/dot-files
export DOT_SCRIPTS_DIR=$DOT_FILES_DIR/scripts
export DOT_CONFIGS_DIR=$DOT_FILES_DIR/configs
export DOT_WORK_DIR=$DOT_FILES_DIR/work-dot-files
export DOT_UTIL_DIR=$DOT_FILES_DIR/util
export DOT_C_ACCENT="#6090D9"
export DOT_C_SECONDARY="#80AE59"
export DOT_C_DIM="#696999"

export PATH=$DOT_SCRIPTS_DIR:$PATH
export PATH=$DOT_WORK_DIR/scripts:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/go/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH
export PATH=$HOME/.composer/vendor/bin:$PATH

export BASH_ENV=$DOT_FILES_DIR/bashUtils

export CODE_DIR=$HOME/code

export XDEBUG_FILE_PATH=/opt/homebrew/etc/php/8.4/conf.d/xdebug.ini

export JAVA_HOME="/usr/libexec/java_home"

export EZA_CONFIG_DIR="$DOT_CONFIGS_DIR/eza"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export C_C='\033[0m'
export C_RED='\033[0;31m'
export C_GREEN='\033[0;32m'
export C_BLUE='\033[0;34m'
export C_CYAN='\033[0;36m'
export C_YELLOW='\033[1;33m'
export C_WHITE='\033[1;37m'
export C_BLACK='\033[0;30m'
export C_PURPLE='\033[0;35m'
export C_BROWN='\033[0;33m'
export C_LIGHT_GRAY='\033[0;37m'
export C_DARK_GRAY='\033[1;30m'
export C_LIGHT_BLUE='\033[1;34m'
export C_LIGHT_GREEN='\033[1;32m'
export C_LIGHT_CYAN='\033[1;36m'
export C_LIGHT_RED='\033[1;31m'
export C_LIGHT_PURPLE='\033[1;35m'

export GUM_INPUT_CURSOR_FOREGROUND="$DOT_ACCENT_COLOR"
export GUM_INPUT_PROMPT_FOREGROUND="$DOT_ACCENT_COLOR"

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=$DOT_C_DIM,italic,bold,underline"

source $DOT_FILES_DIR/bashUtils

if [ -f "$DOT_WORK_DIR/.env" ]; then
    source $DOT_WORK_DIR/.env
fi

if [ -f "$DOT_WORK_DIR/.aliases" ]; then
    source $DOT_WORK_DIR/.aliases
fi
