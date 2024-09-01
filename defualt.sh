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

brew install --cask julia

# Install alacritty
brew install --cask --no-quarantine alacritty

# Install zed
brew install gh
brew install --cask zed

# Install open-source programs
brew install --cask bambu-studio nikitabobko/tap/aerospace inkscape docker jupyterlab

# Install closed-source programs
brew install --cask google-chrome discord spotify

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

# Disable mouse acceleration, natural scrolling, and shake mouse pointer to locate
# Automatically hide the menu bar and dock
# Install catppuccin mocha for zed (extension), chrome (web store), Jupyter Lab (extension)
# download 3DxWare and config:
# Right: 3D Mouse Right
# Left: 3D Mouse Left
# In: 3D Mouse Down
# Out: 3D Mouse Up
# Down: 3D Mouse Out
# Up: 3D Mouse In
# Tilt Backward: 3D Mouse Tilt Backward
# Tilt Forward: 3D Mouse Tilt Forward
# Roll Left: 3D Mouse Roll Left
# Roll Right: 3D Mouse Roll Right
# Spin Clockwise: 3D Mouse Spin Clockwise
# Spin Counter-clockwise: 3D Mouse Spin Counter-clockwise
