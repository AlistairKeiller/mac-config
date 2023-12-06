#!/bin/zsh
set -e

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' > /Users/alistairkeiller/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install Programs
brew tap homebrew/cask-fonts
brew install rustup-init python pipx helix gitui jupyterlab font-jetbrains-mono
brew install --cask --no-quarantine julia discord warp chromium libreoffice modrinth zoom inkcsape kindle obs lapce wacom-tablet

# FO
# + Complementary Shaders - Reimagined + Rethinking Voxels
# + Default Dark Mode + Enhanced Boss Bars + Even Better Enchants
# + AppleSkin + Not Enough Animations + BetterF3 + 3D Skin Layers + Xaero's Minimap (Minimap: off, Deathpoints: off) + Inventory Profiles Next (Enable Items Highlight: false, Enable Overlay Editor Button: false, Enable Settings Button In Inventory: false, Last State Of Checkbox: false) + Presence Footsteps (Global Volume: 20%) + Xaero's World Map + Shulker Box Tooltip + Mouse Tweaks + Eating Animation + Better Statistics Screen + Better Ping Display + Chat Heads + Bobby + Boat Item View + EMI + ClearDespawn + Highlight + MacOS Input Fixes + Distant Horizons + Detail Armor Bar + Status Effect Bars + Chest Tracker
# + Simple Voice Chat

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
