set -e

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Programs
/opt/homebrew/bin/brew install rustup-init gitui nushell helix python python-lsp-server
/opt/homebrew/bin/brew install --cask julia discord skype
/opt/homebrew/bin/brew install --cask alacritty --no-quarantine

# Change Defalt Shell To Nu
echo /opt/homebrew/bin/nu | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/nu

# Install Rust
/opt/homebrew/bin/rustup-init -y --profile complete

# Configure Git
/opt/homebrew/bin/git config --global user.name "Alistair Keiller"
/opt/homebrew/bin/git config --global user.email alistair@keiller.net
/opt/homebrew/bin/git config --global credential.helper osxkeychain

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

# Configure Nu
echo 'let-env PATH = "/bin:/usr/bin:/opt/homebrew/bin"' >> "/Users/alistairkeiller/Library/Application Support/nushell/config.nu"
