# Install Homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
# Install Programs
```bash
/opt/homebrew/bin/brew install discord julia rust rust-analyzer gitui fish helix zellij
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
```