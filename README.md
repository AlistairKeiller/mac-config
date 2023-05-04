# Install Homebrew
```fish
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
# Install Programs
```fish
/opt/homebrew/bin/brew install julia rustup-init gitui fish helix
/opt/homebrew/bin/brew install alacritty --no-quarantine
```
# Change Defalt Shell To Fish
```fish
chsh -c /opt/homebrew/bin/fish
```
# Add Homebrew To Fish Path
```fish
fish_add_path /opt/homebrew/bin
```
# Configure Git
```fish
git config --global user.name "Alistair Keiller"
git config --global user.email alistair@keiller.net
git config --global credential.helper osxkeychain
```
# Install Pluto
```fish
julia -e 'using Pkg;Pkg.add("Pluto")'
```
# Configure Alacritty
in ~/.config/alacritty/alacritty.yml
```yml
font:
  size: 15.0
window:
  option_as_alt: Both
```
# Configure Helix
```toml
theme = "onedark"

[editor]
auto-save = true
idle-timeout = 0
line-number = "relative"
completion-replace = true

[editor.lsp]
display-inlay-hints = true

[editor.file-picker]
hidden = false
```
# Configure Rust
```fish
rustup-init -y --profile complete
fish_add_path ~/.cargo/bin/
```
# Install wgsl analyzer
```fish
cargo install --git https://github.com/wgsl-analyzer/wgsl-analyzer wgsl_analyzer
```
# Add alistair directory to favorites in finder
# Install Numbers
