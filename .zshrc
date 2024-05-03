#Oh My Zsh
export ZSH="/Users/dannyroberts/.oh-my-zsh"
ZSH_THEME="robbyrussell"
DISABLE_MAGIC_FUNCTIONS="true"
ZSH_TMUX_AUTOSTART=true
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search tmux)
source $ZSH/oh-my-zsh.sh

#Personal Aliases
alias @ls='exa --tree --level=2 --icons'
alias @pwd='pwd | tee >(pbcopy)'
alias @ai='arch -arm64 ollama run mistral'
alias '@??'='gh copilot suggest -t shell'
alias @cat='cat ~/.dotfiles/.zshrc'
alias @code='code . && exit'
alias @desktop='cd ~/desktop'
alias @diff='if git diff master...HEAD --quiet; then echo "No changes yet!"; else git diff master...HEAD | ollama run mistral "write me a brief summary for this change that will help someone get up to speed when working on this branch"; fi'
