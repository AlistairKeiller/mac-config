#!/bin/zsh
set -e

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' > /Users/alistairkeiller/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install Programs
brew tap homebrew/cask-fonts
brew install rustup-init python pipx helix gitui jupyterlab font-jetbrains-mono
brew install --cask --no-quarantine julia discord warp chromium libreoffice modrinth zoom inkcsape kindle obs lapce wacom-tablet blender

# FO or SO
# Shaders: Complementary Shaders - Reimagined + Rethinking Voxels
# Resource Packs: Default Dark Mode + Enhanced Boss Bars + Even Better Enchants + Fresh Animations
# Client Functionally Important Mods: AppleSkin + Xaero's Minimap (Minimap: off, Deathpoints: off) + Xaero's World Map + Shulker Box Tooltip + MacOS Input Fixes + ItemSwapper + Chest Tracker + Inventory Essentials
# Client QOL mods: Not Enough Animations + BetterF3 (Font Scale: 0.7) + 3D Skin Layers + Presence Footsteps (Global Volume: 20%) + Eating Animation + Better Ping Display + Chat Heads + Boat Item View + Make Bubbles Pop + ClearDespawn + Highlight + Distant Horizons (incompatible with ModernFix) + Detail Armor Bar
# + Simple Voice Chat + Inventory Management

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
