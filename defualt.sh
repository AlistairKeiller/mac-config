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
brew install rustup-init python3
brew install --cask --no-quarantine julia helix libreoffice modrinth obs zed blender kdenlive audacity inkscape raspberry-pi-imager mactex-no-gui sidequest alacritty google-chrome lm-studio discord betterdiscord-installer spicetify/homebrew-tap/spicetify-cli adobe-connect
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
# install "Catppuccin Themes" to zed
# install https://github.com/catppuccin/discord
# install https://github.com/catppuccin/spicetify
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
# install "Aiko", 3Dconnexion, and Focusrite Control 2
# set defualt screenshot location to clipboard
