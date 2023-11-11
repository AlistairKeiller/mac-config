#!/bin/zsh
set -e

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' > /Users/alistairkeiller/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install Programs
brew install rustup-init python helix gitui jupyterlab java
brew install --cask --no-quarantine julia discord warp chromium libreoffice modrinth zoom wacom-tablet inkcsape

# FO + Complementary Shaders - Reimagined + Presence Footsteps + AppleSkin + Inventory Profiles Next + Xaero's Minimap + Not Enough Animations + 3D Skin Layers + Roughly Enough Items + AmbientSounds + Xaero's World Map + Shulker Box Tooltip + Visuality + Eating Animation + Mouse Tweaks

# Install Rust
rustup-init -y --profile complete

# Configure Git
git config --global user.name "Alistair Keiller"
git config --global user.email alistair@keiller.net

 # Configure Helix
 mkdir -p ~/.config/helix/
 echo 'theme = "onedark"
 
 [editor]
 auto-save = true
 idle-timeout = 0
 line-number = "relative"
 completion-replace = true
 
 [editor.lsp]
 display-inlay-hints = true
 
 [editor.file-picker]
 hidden = false' > ~/.config/helix/config.toml

# Disable mouse acceleration and natural scrolling
