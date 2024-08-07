# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
DISABLE_MAGIC_FUNCTIONS="true"
ZSH_COMMAND_TIME_MSG="Execution time: %s sec"
ZSH_COMMAND_TIME_MIN_SECONDS=3
ZSH_COMMAND_TIME_COLOR="cyan"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#c0c0c0,bold"

source $HOME/.config/zsh/catppuccin_macchiato-zsh-syntax-highlighting.zsh

plugins=(copypath git zsh-autosuggestions zsh-syntax-highlighting command-time)
source $ZSH/oh-my-zsh.sh

# fzf
FZF_DEFAULT_OPTS="--height=50% --preview 'cat {}' --layout=reverse --info=inline --border --margin=1 --color=bg+:#3B4252,bg:#2E3440,spinner:#81A1C1,hl:#616E88,fg:#D8DEE9,header:#616E88,info:#81A1C1,pointer:#81A1C1,marker:#81A1C1,fg+:#D8DEE9,prompt:#81A1C1,hl+:#81A1C1"

FZF_HIGHLIGHT_PREVIEW_OPTS="--height 50% --preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null' --preview-window=up:40%"

FZF_CTRL_T_OPTS="--delimiter '/' --nth=-1 $FZF_HIGHLIGHT_PREVIEW_OPTS"

source <(fzf --zsh)


# rga-fzf fix
@find() {
  local search_term="${1:-}"
  local RG_PREFIX="rga --files-with-matches"

  local file
  file="$(
    fzf --sort --preview="[[ ! -z {} ]] && rga --pretty --context 5 {q} {}" \
      --phony -q "$search_term" \
      --bind "change:reload:$RG_PREFIX {q}" \
      --preview-window="70%:wrap"
  )" &&
	  echo "$file" | tee >(clipcopy) >(xargs -I {} code {})
	  #echo "$file" | tee >(clipcopy) >(xargs -I {} nvim {})
}

bindkey -s '^f' '@find\n'

# personal aliases
function @vim() {
  local current_date="$(date -u '+%Y-%m-%d_%H-%M-%S').txt"
  vim $HOME/desktop/${1:-$current_date}
}

alias @pwd='copypath'
alias @grep='rga-fzf'
alias '@??'='gh copilot suggest -t shell'
alias @cat='cat $HOME/.dotfiles/.zshrc'
alias @code='code . && exit'
alias @desktop='$HOME/Desktop'
