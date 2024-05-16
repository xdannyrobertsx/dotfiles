#!/bin/bash

brew update && brew upgrade

brew install git tmux fzf highlight rga

if [ ! -f "$HOME/.zshrc" ]; then
    touch "$HOME/.zshrc"
fi

if [ ! -f "$HOME/.tmux.conf" ]; then
    touch "$HOME/.tmux.conf"
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/xdannyrobertsx/dotfiles.git $HOME/.dotfiles

echo "source $HOME/.dotfiles/.zshrc" >> $HOME/.zshrc

ln -s $HOME/.dotfiles/.tmux.conf $HOME/.tmux.conf

echo "setup complete!"
