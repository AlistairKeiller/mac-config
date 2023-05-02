# Install Homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
# Install Programs
```bash
/opt/homebrew/bin/brew install discord julia rust rust-analyzer rustfmt gitui fish helix zoom
/opt/homebrew/bin/brew install alacritty --no-quarantine
```
# Change Defalt Shell To Fish
```bash
chsh -c /opt/homebrew/bin/fish
```
# Add Homebrew To Fish Path
```bash
fish_add_path /opt/homebrew/bin
```
# Configure Git
```bash
git config --global user.name "Alistair Keiller"
git config --global user.email alistair@keiller.net
git config --global credential.helper osxkeychain
```
# Install Pluto
```bash
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
