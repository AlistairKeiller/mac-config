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

# SO + Complementary Shaders - Reimagined + Rethinking Voxels + Default Dark Mode + Enhanced Boss Bars + Iris + Mod Menu + Sodium Extra + Reece's Sodium Options + LambDynamicLights + Continuity + Dynamic FPS + AppleSkin + Not Enough Animations + BetterF3 + 3D Skin Layers + Zoomify + Xaero's Minimap (Minimap: off, Deathpoints: off) + Borderless Mining + Inventory Profiles Next (Enable Items Highlight: false, Enable Overlay Editor Button: false, Enable Settings Button In Inventory: false) + Presence Footsteps (volume: .2) + Xaero's World Map + Roughly Enough Items + Better Mount HUD + More Chat History + Shulker Box Tooltip + Mouse Tweaks + Eating Animation + Better Statistics Screen + Better Ping Display + Chat Heads + Bobby + Boat Item View + ClearDespawn + Make Bubbles Pop + Enchantment Descriptions + Highlight + Roughly Enough Professions + MacOS Input Fixes + Better Third Person + Detail Armor Bar + Status Effect Bars + Held Item Info + Chest Tracker
# + Simple Voice Chat + Debugify

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
