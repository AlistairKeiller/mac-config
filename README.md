```fish
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Install Programs
/opt/homebrew/bin/brew install julia rustup-init python gitui fish helix arc
/opt/homebrew/bin/brew install alacritty --no-quarantine
# Change Defalt Shell To Fish
chsh -c /opt/homebrew/bin/fish
# Add Homebrew And Rust To Fish Path
fish_add_path /opt/homebrew/bin ~/.cargo/bin/
# Install Rust
rustup-init -y --profile complete
cargo install --git https://github.com/wgsl-analyzer/wgsl-analyzer wgsl_analyzer
# Install ruff-lsp
pip3 install ruff-lsp
# Install Pluto
julia -e 'using Pkg;Pkg.add("Pluto")'
# Configure Git
git config --global user.name "Alistair Keiller"
git config --global user.email alistair@keiller.net
git config --global credential.helper osxkeychain
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
# Add alistair directory to favorites in finder
# Install Numbers

[[language]]
name = "python"
scope = "source.python"
language-server = { command = "ruff-lsp" }
config = { settings = { args = [] } }
```
