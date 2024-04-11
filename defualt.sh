#!/bin/zsh
set -e

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' > /Users/alistairkeiller/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install fish
brew install fish
sudo sh -c 'echo /opt/homebrew/bin/fish >> /etc/shells'
chsh -s /opt/homebrew/bin/fish
fish -c "fish_add_path /opt/homebrew/bin"

# Tiling window management
brew install FelixKratz/formulae/borders koekeishiya/formulae/yabai koekeishiya/formulae/skhd
echo "$(whoami) ALL=(root) NOPASSWD: sha256:$(shasum -a 256 $(which yabai) | cut -d " " -f 1) $(which yabai) --load-sa" | sudo tee /private/etc/sudoers.d/yabai
skhd --start-service
yabai --start-service
brew services start borders
curl -L https://raw.githubusercontent.com/FelixKratz/dotfiles/master/install_sketchybar.sh | sh

# Install Programs
brew install rustup-init
brew install --cask --no-quarantine julia zed obs alacritty google-chrome discord betterdiscord-installer spotify adobe-connect
curl https://raw.githubusercontent.com/catppuccin/discord/main/themes/mocha.theme.css > ~/Library/Application\ Support/BetterDiscord/themes/catppuccin-mocha.theme.css
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh
# install "Catppuccin Themes" to zed
# install Catppuccin Mocha to spicetify marketplace (https://github.com/catppuccin/spicetify)
# install https://chromewebstore.google.com/detail/catppuccin-chrome-theme-m/bkkmolkhemgaeaeggcmfbghljjjoofoh

# Install Rust
rustup-init -y --profile complete

# Configure Git
git config --global user.name "Alistair Keiller"
git config --global user.email alistair@keiller.net

# Configure ssh
echo "ServerAliveInterval 60" > ~/.ssh/config

# Disable mouse acceleration, natural scrolling, and shake mouse pointer to locate
# Automatically hide the menu bar and dock
# install "Aiko", and Focusrite Control 2
# set defualt screenshot location to documents
