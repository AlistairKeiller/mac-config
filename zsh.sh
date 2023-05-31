set -e
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Install Programs
/opt/homebrew/bin/brew install rustup-init gitui fish helix python python-lsp-server
/opt/homebrew/bin/brew install --cask julia discord skype
/opt/homebrew/bin/brew install --cask alacritty --no-quarantine
# Change Defalt Shell To Fish
echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish
# Run The Rest in Fish Shell
/opt/homebrew/bin/fish fish.sh
