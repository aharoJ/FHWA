# Function to install Obsidian using Homebrew (macOS) or Snap (Linux)
install_obsidian_homebrew() {
    if [[ "$OSTYPE" == "darwin"* ]]; then
        if ! check_obsidian_installed; then
            brew install --cask obsidian
            echo "Obsidian installed using Homebrew."
        else
            echo "Obsidian is already installed."
        fi

        if ! check_yakitrak_obs_installed; then
            brew tap yakitrak/yakitrak
            brew install yakitrak/yakitrak/obs
            echo "yakitrak/obs installed using Homebrew."
        else
            echo "yakitrak/obs is already installed."
        fi
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        sudo snap install obsidian --classic
        echo "Obsidian installed using Snap."
    else
        echo "Unsupported operating system."
        exit 1
    fi
}
