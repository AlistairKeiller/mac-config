set -e
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Install Programs
/opt/homebrew/bin/brew install julia rustup-init python pango ffmpeg python-lsp-server texlive gitui fish helix discord skype
/opt/homebrew/bin/brew install alacritty --no-quarantine
# Change Defalt Shell To Fish
echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish
# Run The Rest in Fish Shell
fish test2.sh
