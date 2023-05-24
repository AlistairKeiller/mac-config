set -e
# Add Homebrew And Rust To Fish Path
fish_add_path /opt/homebrew/bin ~/.cargo/bin/
# Install Rust
rustup-init -y --profile complete
cargo install --git https://github.com/wgsl-analyzer/wgsl-analyzer wgsl_analyzer
# Install Pluto
julia -e 'using Pkg;Pkg.add("Pluto")'
# Configure Git
git config --global user.name "Alistair Keiller"
git config --global user.email alistair@keiller.net
git config --global credential.helper osxkeychain
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
# Add alistair directory to favorites in finder
# Install Office 365 and grammarly from app store
