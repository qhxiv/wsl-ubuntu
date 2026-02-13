#!/usr/bin/env bash

sudo apt update && sudo apt upgrade -y

sudo apt install -y ripgrep fd-find tmux git bat
ln -s $(which fdfind) ~/.local/bin/fd
ln -s $(which batcat) ~/.local/bin/bat

# tmux plugin manager
if [[ ! -d "~/.tmux/plugins/tpm" ]]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  ~/.tmux/plugins/tpm/bin/install_plugins
fi

# cleanup
sudo apt autoremove -y
sudo apt clean
