#!/bin/bash

# Function to install Homebrew (macOS)
install_homebrew() {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

# Function to install Obsidian using Homebrew (macOS)
install_obsidian_homebrew() {
    brew install --cask obsidian
    brew tap yakitrak/yakitrak
    brew install yakitrak/yakitrak/obs
}

# Function to ask Linux users about installing obs with Homebrew
prompt_obsidian_installation_linux() {
    read -p "Do you want to install Obsidian using Homebrew? (y/n): " choice
    case "$choice" in
        y|Y ) install_homebrew; install_obsidian_homebrew;;
        n|N ) echo "Okay, you can use Snap to install Obsidian. Note that you won't have the obs command-line tool.";;
        * ) echo "Invalid choice. You can use Snap to install Obsidian. Note that you won't have the obs command-line tool.";;
    esac
}

# Clone the repository and navigate to the specified path
clone_repo_and_open_obsidian() {
    # Set the repository URL
    repo_url="https://github.com/your-username/your-repo.git"

    # Clone the repository
    mkdir -p ~/aharoJ
    cd ~/aharoJ
    git clone "$repo_url"

    # Navigate to the specified path and open Obsidian
    cd ~/aharoJ/FHWA/DOCS
    obsidian .
}

# Main script execution starts here
echo "Welcome to the repository setup script!"

# Check the operating system
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Detected macOS."
    if ! command -v brew &> /dev/null; then
        echo "Homebrew is not installed. Installing..."
        install_homebrew
    fi
    echo "Installing or updating Obsidian using Homebrew..."
    install_obsidian_homebrew
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Detected Linux."
    prompt_obsidian_installation_linux
else
    echo "Unsupported operating system."
    exit 1
fi

# Clone the repository and open Obsidian
echo "Cloning repository and opening Obsidian..."
clone_repo_and_open_obsidian

echo "Setup completed! Enjoy using Obsidian to access your Markdown notes."
