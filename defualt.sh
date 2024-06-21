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
brew install --cask --no-quarantine julia zed obs alacritty chromium discord spotify bambu-studio kdenlive autodesk-fusion nikitabobko/tap/aerospace
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

# Disable mouse acceleration, natural scrolling, and shake mouse pointer to locate
# Automatically hide the menu bar and dock
