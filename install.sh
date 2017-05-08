#!/bin/bash

echo "Installing applications..."
sudo apt-get -y install zsh openbox openbox-menu firefox terminator wicd wicd-curses tint2 nitrogen xcompmgr neovim curl

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cd $HOME

echo "Linking zshrc"
ln -s $HOME/.dotfiles/zsh_config/zshrc .zshrc
ln -s $HOME/.dotfiles/gitconfig .gitconfig

cd $HOME/.config
`pwd`

echo "Linking application configurations"
ln -s $HOME/.dotfiles/terminator terminator
ln -s $HOME/.dotfiles/nvim nvim
ln -s $HOME/.dotfiles/openbox openbox
