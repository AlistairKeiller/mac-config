set -e
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Install Programs
/opt/homebrew/bin/brew install rustup-init gitui fish helix
/opt/homebrew/bin/brew --cask julia discord skype
/opt/homebrew/bin/brew install --cask alacritty --no-quarantine
# Change Defalt Shell To Fish
echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish
# Run The Rest in Fish Shell
/opt/homebrew/bin/fish test2.sh
