#!/bin/zsh
set -e

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' > /Users/alistairkeiller/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install Programs
brew tap homebrew/cask-fonts
brew install rustup-init python helix gitui jupyterlab font-jetbrains-mono font-monocraft font-monaspace ffmpeg
brew install --cask --no-quarantine julia discord warp google-chrome libreoffice modrinth zoom inkscape kindle obs lapce blender spotify sidequest lm-studio draw-things

# SO + Simple Voice Chat + Xaero's Minimap (Minimap: off, Deathpoints: off) + Xaero's World Map + Shulker Box Tooltip + Bobby + MacOS Input Fixes + Mouse Wheelie

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

git clone https://github.com/lllyasviel/Fooocus ~/Fooocus

# Disable mouse acceleration, natural scrolling, and shake mouse pointer to locate
# install "Aiko"
# lm-studio: phi-2, Mistral-7B-Instruct-v0.2, dolphin-2.2.1-mistral-7
