#!/bin/zsh
set -e

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' > /Users/alistairkeiller/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install Programs
brew tap homebrew/cask-fonts
brew install rustup-init python helix gitui jupyterlab java font-jetbrains-mono
brew install --cask --no-quarantine julia discord warp chromium libreoffice modrinth zoom inkcsape kindle obs lapce wacom-tablet

# SO + Complementary Shaders - Reimagined + Default Dark Mode + Enhanced Boss Bars + Iris + Mod Menu + Sodium Extra + Reece's Sodium Options + LambDynamicLights + Continuity + AppleSkin + Not Enough Animations + BetterF3 + 3D Skin Layers + Zoomify + Xaero's Minimap + Inventory Profiles Next + Presence Footsteps + Xaero's World Map + Roughly Enough Items + Better Mount HUD + More Chat History + Shulker Box Tooltip + Mouse Tweaks + Eating Animation + Ambient Sounds + Dynamic Crosshair + Better Statistics Screen + Better Ping Display + Chat Heads + Bobby + Boat Item View + ClearDespawn + Make Bubbles Pop + Enchantment Descriptions + Highlight + Gamma Utils + MacOS Input Fixes + Better Third Person + Detail Armor Bar + Status Effect Bars + Dark Loading Screen + Held Item Info

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
# Install whisper transcription from the app store
