#Oh My Zsh
export ZSH="/Users/dannyroberts/.oh-my-zsh"
ZSH_THEME="robbyrussell"
DISABLE_MAGIC_FUNCTIONS="true"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)
source $ZSH/oh-my-zsh.sh

#Personal Aliases
alias @ls='exa --tree --level=2 --icons'
alias @pwd='pwd | tee >(pbcopy)'
alias @ai='arch -arm64 ollama run mistral'
alias '@??'='gh copilot suggest -t shell'
alias @cat='cat /Users/dannyroberts/.zshrc'
alias repo_runner="./.scripts/repo_runner.sh"
alias @repo_runner="./.scripts/repo_runner.sh"
alias @cms_public="./.scripts/cms_public_repo_runner.sh"
alias @components="./.scripts/components_only.sh"
