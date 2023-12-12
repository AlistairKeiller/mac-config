#!/bin/zsh
set -e

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' > /Users/alistairkeiller/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install Programs
brew tap homebrew/cask-fonts
brew install rustup-init python pipx helix gitui jupyterlab font-jetbrains-mono
brew install --cask --no-quarantine julia discord warp google-chrome libreoffice modrinth zoom inkcsape kindle obs lapce wacom-tablet blender

# SO + LambDynamicLights + Simple Voice Chat + Continuity + AppleSkin + BetterF3 (Font Scale: 0.7) + Xaero's Minimap (Minimap: off, Deathpoints: off) + Zoomify + Presence Footsteps (volume: 20%) + Debugify + Xaero's World Map + Shulker Box Tooltip + Sound Physics Remastered + MacOS Input Fixes + Chest Tracker

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

# Disable mouse acceleration, natural scrolling, and shake mouse pointer to locate
