#!/bin/bash

# Function to install Homebrew (macOS)
install_homebrew_macos() {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

# Function to install Homebrew on Linux
install_homebrew_linux() {
    sudo apt update
    sudo apt-get install build-essential
    sudo apt install git -y
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    (echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/$USER/.bashrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
}

# Function to check if Homebrew is installed
check_homebrew_installed() {
    if ! command -v brew &>/dev/null; then
        return 1
    else
        return 0
    fi
}


# Clone the repository and navigate to the specified path
clone_repo_and_open_obsidian() {
    # ... existing code for cloning and opening ...
}

# Main script execution starts here
echo "Welcome to the repository setup script!"

# Check the operating system
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Detected macOS."
    if check_homebrew_installed; then
        echo "Homebrew is already installed. Proceeding with Obsidian installation."
    else
        echo "Homebrew is not installed. Installing..."
        install_homebrew_macos
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
