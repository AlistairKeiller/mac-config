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

# Install Programs
brew tap oven-sh/bun
brew install rustup-init gh python pipx bun
brew install --cask --no-quarantine julia zed obs alacritty chromium discord spotify bambu-studio kdenlive autodesk-fusion nikitabobko/tap/aerospace inkscape
rustup-init -y --profile complete

# Configure Git
git config --global user.name "Alistair Keiller"
git config --global user.email alistair@keiller.net

# Configure ssh
mkdir -p ~/.ssh
echo "ServerAliveInterval 60" > ~/.ssh/config

# .config
mkdir -p ~/.config/
cp -r ./config/* ~/.config/

defaults write -g NSWindowShouldDragOnGesture YES

# Disable mouse acceleration, natural scrolling, and shake mouse pointer to locate
# Automatically hide the menu bar and dock
# space mouse:
# Right: 3D Mouse Right
# Left: 3D Mouse Left
#In: 3D Mouse Down
# Out: 3D Mouse Up
# Down: 3D Mouse Out
# Up: 3D Mouse In
# Tilt Backward: 3D Mouse Tilt Backward
# Tilt Forward: 3D Mouse Tilt Forward
# Roll Left: 3D Mouse Roll Left
# Roll Right: 3D Mouse Roll Right
# Spin Clockwise: 3D Mouse Spin Clockwise
# Spin Counter-clockwise: 3D Mouse Spin Counter-clockwise
