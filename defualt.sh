#!/bin/zsh

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' > /Users/alistairkeiller/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install fish
brew install fish
sudo sh -c 'echo /opt/homebrew/bin/fish >> /etc/shells'
chsh -s /opt/homebrew/bin/fish
fish -c "fish_add_path /opt/homebrew/bin"

# Install proramming languages
brew install rustup-init
rustup-init -y --profile complete

brew tap oven-sh/bun
brew install bun

brew install python
ln -s /opt/homebrew/bin/python3 /opt/homebrew/bin/python
ln -s /opt/homebrew/bin/pip3 /opt/homebrew/bin/pip

brew install --cask julia

# Install alacritty
brew install --cask --no-quarantine alacritty

# Install open-source programs
brew install --cask zed visual-studio-code bambu-studio nikitabobko/tap/aerospace inkscape blender orbstack

# Install closed-source programs
brew install --cask google-chrome discord slack spotify

# Configure Git
git config --global user.name "Alistair Keiller"
git config --global user.email alistair@keiller.net

# Configure ssh
mkdir -p ~/.ssh
echo "ServerAliveInterval 60" > ~/.ssh/config

# .config
mkdir -p ~/.config/
cp -r ./config/* ~/.config/

# ctrl+cmd to drag window
defaults write -g NSWindowShouldDragOnGesture YES

# Install 3DxWare, Fusion, and LockDown Browser
# Theme zed (extension), chrome (web store)
# Auto hide dock, disable mouse acceleration, natural scrolling, and shake mouse pointer to locate
