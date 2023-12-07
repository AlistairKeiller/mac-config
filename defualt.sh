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
# + Default Dark Mode + Enhanced Boss Bars + Even Better Enchants + Fresh Animations
# + AppleSkin + Not Enough Animations + BetterF3 (Font Scale: 0.7) + 3D Skin Layers + Xaero's Minimap (Minimap: off, Deathpoints: off) + Presence Footsteps (Global Volume: 20%) + Xaero's World Map + Shulker Box Tooltip + Eating Animation + Better Statistics Screen + Better Ping Display + Chat Heads + Bobby + Boat Item View + EMI + Make Bubbles Pop + ClearDespawn + Highlight + Mouse Wheelie + MacOS Input Fixes + Detail Armor Bar + ItemSwapper + Status Effect Bars + Chest Tracker
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
