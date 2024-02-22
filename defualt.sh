#!/bin/zsh
set -e

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' > /Users/alistairkeiller/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install fish
brwe install fish
sudo sh -c 'echo /opt/homebrew/bin/fish >> /etc/shells'
chsh -s /opt/homebrew/bin/fish
fish -c "fish_add_path /opt/homebrew/bin"

# Tiling window management
brew install FelixKratz/formulae/borders koekeishiya/formulae/yabai koekeishiya/formulae/skhd
skhd --start-service
yabai --start-service
brew services start borders
curl -L https://raw.githubusercontent.com/FelixKratz/dotfiles/master/install_sketchybar.sh | sh

# Install Programs
brew install rustup-init python3 ffmpeg helix
brew install --cask --no-quarantine julia libreoffice modrinth obs zed blender kdenlive audacity inkscape raspberry-pi-imager mactex-no-gui sidequest alacritty google-chrome lm-studio discord adobe-connect ableton-live-lite blackhole-2ch
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes

# Install Jupyter
pip3 install jupyterlab nbconvert ipyflow
echo 'export JUPYTER_PATH=/opt/homebrew/share/jupyter:$JUPYTER_PATH' >> ~/.zshrc
ln -s /opt/homebrew/bin/python3 /opt/homebrew/bin/python
ln -s /opt/homebrew/bin/pip3 /opt/homebrew/bin/pip

# Install Rust
rustup-init -y --profile complete

# Configure Git
git config --global user.name "Alistair Keiller"
git config --global user.email alistair@keiller.net

# Disable mouse acceleration, natural scrolling, and shake mouse pointer to locate
# Automatically hide the menu bar and dock
# install "Aiko", 3Dconnexion, and Focusrite Control 2
