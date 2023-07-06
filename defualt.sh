set -e

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/alistairkeiller/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install Programs
/opt/homebrew/bin/brew install rustup-init python r
/opt/homebrew/bin/brew install --cask julia discord skype visual-studio-code quarto

# Install Rust
/opt/homebrew/bin/rustup-init -y --profile complete
