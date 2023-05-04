```fish
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Install Programs
/opt/homebrew/bin/brew install julia rustup-init gitui fish helix arc
/opt/homebrew/bin/brew install alacritty --no-quarantine
# Change Defalt Shell To Fish
chsh -c /opt/homebrew/bin/fish
# Add Homebrew To Fish Path
fish_add_path /opt/homebrew/bin
# Configure Git
git config --global user.name "Alistair Keiller"
git config --global user.email alistair@keiller.net
git config --global credential.helper osxkeychain
# Install Pluto
julia -e 'using Pkg;Pkg.add("Pluto")'
# Configure Alacritty
echo "font:
  size: 15.0
window:
  option_as_alt: Both" > ~/.config/alacritty/alacritty.yml
# Configure Helix
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
# Configure Rust
rustup-init -y --profile complete
fish_add_path ~/.cargo/bin/
# Install wgsl analyzer
cargo install --git https://github.com/wgsl-analyzer/wgsl-analyzer wgsl_analyzer
# Add alistair directory to favorites in finder
# Install Numbers
```
