set -e

# Install Rosetta
sudo softwareupdate --install-rosetta

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/alistairkeiller/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install Programs
brew install rustup-init python helix gitui jupyterlab java
brew install --cask julia discord quarto warp chromium libreoffice prismlauncher

# Simply Optimized + Mod Menu + Sodium Extra + Continuity + LambDynamicLights + Inventory Profiles Next + BetterF3 + Xaero's Minimap + Zoomify + Xaero's World Map + Borderless Mining + Just Enough Items + Better Mount HUD + Shulker Box Tooltip + Mouse Tweaks

# Install Rust
rustup-init -y --profile complete

# Configure Git
git config --global user.name "Alistair Keiller"
git config --global user.email alistair@keiller.net

# Configure Alacritty
mkdir -p ~/.config/alacritty/
echo 'font:
 size: 15.0
window:
 option_as_alt: Both'> ~/.config/alacritty/alacritty.yml

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
