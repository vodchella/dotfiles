#!/bin/bash

wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/chrome.gpg --import
sudo chmod 644 /etc/apt/trusted.gpg.d/chrome.gpg
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'

sudo add-apt-repository ppa:neovim-ppa/unstable

sudo apt update

# Pacstall
sudo bash -c "$(curl -fsSL https://git.io/JsADh || wget -q https://git.io/JsADh -O -)"

# For i3lock-color
sudo apt install -y \
    libxcb-composite0-dev \
    libjpeg-dev \
    libpam0g-dev

pacstall -I -P \
    alacritty \
    i3-gaps i3lock-color \
    nala-deb

sudo nala install -y \
    arc-theme \
    bat \
    compton \
    curl \
    docker docker-compose \
    feh \
    fish \
    git \
    grim \
    htop \
    imagemagick \
    google-chrome-stable \
    lxappearance \
    most \
    neovim \
    npm \
    oxygen-cursor-theme \
    polybar \
    python3-pip \
    ranger \
    rofi \
    scrot \
    shellcheck \
    sway \
    swaylock \
    udiskie \
    viewnior

sudo pip3 install \
    powerline-shell \
    git+https://github.com/will8211/unimatrix.git

sudo npm install -g tree-sitter-cli

# Packer for NVim
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim

sudo apt autoremove

sudo usermod -aG docker "${USER}"
touch ~/.config/ranger/scope.sh
