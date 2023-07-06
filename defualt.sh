set -e

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Programs
/opt/homebrew/bin/brew install rustup-init python r
/opt/homebrew/bin/brew install --cask julia discord skype quarto

# Install Rust
/opt/homebrew/bin/rustup-init -y --profile complete

# Configure Git
/opt/homebrew/bin/git config --global user.name "Alistair Keiller"
/opt/homebrew/bin/git config --global user.email alistair@keiller.net
