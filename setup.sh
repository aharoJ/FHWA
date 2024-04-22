#!/bin/bash

# Function to install Homebrew (macOS)
install_homebrew() {
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

# Function to install Homebrew on Linux
install_homebrew_linux() {
	sudo apt update
	sudo apt-get install build-essential
	sudo apt install git -y
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	(
		echo
		echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"'
	) >>/home/$USER/.bashrc
	eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
}

# Function to install Obsidian using Snap (Linux)
install_obsidian_snap() {
	sudo snap install obsidian --classic
	echo "Obsidian installed using Snap."
}

# Function to check if Homebrew is installed
check_homebrew_installed() {
	if ! command -v brew &>/dev/null; then
		return 1
	else
		return 0
	fi
}

# Function to check if Obsidian is already installed using Homebrew
check_obsidian_installed() {
	if brew list --cask obsidian &>/dev/null; then
		return 0
	else
		return 1
	fi
}

# Function to check if yakitrak/obs is already installed using Homebrew
check_yakitrak_obs_installed() {
	if brew list obs &>/dev/null; then
		return 0
	else
		return 1
	fi
}

# Function to install Obsidian using Homebrew (macOS)
install_obsidian_homebrew() {
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
}

# Function to ask Linux users about installing Obsidian with Homebrew
prompt_obsidian_installation_linux() {
	read -p "Do you want to install Obsidian using Homebrew? (y/n): " choice
	case "$choice" in
	y | Y)
		if check_homebrew_installed; then
			echo "Homebrew is already installed. Proceeding with Obsidian installation."
		else
			install_homebrew_linux
		fi
		install_obsidian_homebrew
		;;
	n | N) echo "Okay, you can use Snap to install Obsidian. Note that you won't have the obs command-line tool." ;;
	*) echo "Invalid choice. You can use Snap to install Obsidian. Note that you won't have the obs command-line tool." ;;
	esac
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

echo "!!!!!!Setup completed!!!!!!! Please follow the README instructions to clone the repository and configure your environment."
