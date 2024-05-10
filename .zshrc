#Oh My Zsh
export ZSH="/Users/dannyroberts/.oh-my-zsh"
ZSH_THEME="robbyrussell"
DISABLE_MAGIC_FUNCTIONS="true"
ZSH_TMUX_AUTOCONNECT=true
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_DEFAULT_SESSION_NAME="Base"
ZSH_COMMAND_TIME_MIN_SECONDS=3
ZSH_COMMAND_TIME_MSG="Execution time: %s sec"
ZSH_COMMAND_TIME_COLOR="cyan"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#c0c0c0,bold"
plugins=(copypath git zsh-autosuggestions zsh-syntax-highlighting tmux command-time)
source $ZSH/oh-my-zsh.sh

#Personal Aliases and Functions

function @ls() {
    exa --tree --level=${1:-1} --icons -a
}

function @vim() {
    local current_date="$(date -u '+%Y-%m-%d_%H-%M-%S').txt"
    echo $current_date
    vim ~/desktop/${1:-$current_date}
}

function @echo() {
    if [ $# -eq 1 ]; then
        while :; do
            echo "$1"
            sleep 1
        done
    else
        while :; do
            echo $(date +"%Y-%m-%d %H:%M:%S")
            sleep 1
        done
    fi
}

alias @pwd='copypath'
alias @ai='ollama run llama3:8b'
alias '@??'='gh copilot suggest -t shell'
alias @cat='cat ~/.dotfiles/.zshrc'
alias @code='code . && exit'
alias @desktop='cd ~/desktop'
alias @diff='if git diff master...HEAD --quiet; then echo "No changes yet!"; else git diff master...HEAD | ollama run llama3:8b "write me a brief summary for this change that will help someone get up to speed when working on this branch"; fi'
