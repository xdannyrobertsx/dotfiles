#!/bin/bash

#!/bin/bash

brew update && brew upgrade

brew install git tmux

if [ ! -f "$HOME/.zshrc" ]; then
    touch "$HOME/.zshrc"
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/xdannyrobertsx/dotfiles.git $HOME/.dotfiles

echo "setup complete!"
