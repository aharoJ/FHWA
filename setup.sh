#!/bin/bash

# Function to install Homebrew (macOS)
install_homebrew() {
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
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

# Function to ask Linux users about installing obs with Homebrew
prompt_obsidian_installation_linux() {
	read -p "Do you want to install Obsidian using Homebrew? (y/n): " choice
	case "$choice" in
	y | Y)
		if check_homebrew_installed; then
			echo "Homebrew is already installed. Proceeding with Obsidian installation."
		else
			install_homebrew
		fi
		install_obsidian_homebrew
		;;
	n | N) echo "Okay, you can use Snap to install Obsidian. Note that you won't have the obs command-line tool." ;;
	*) echo "Invalid choice. You can use Snap to install Obsidian. Note that you won't have the obs command-line tool." ;;
	esac
}

# Clone the repository and navigate to the specified path
clone_repo_and_open_obsidian() {
	# Set the repository URL
	repo_url="https://github.com/aharoJ/FHWA.git"

	# Check if ~/aharoJ directory already exists
	if [ -d ~/$HOME/aharoJ ]; then
		echo "The ~/$HOME/aharoJ directory already exists."
	else
		mkdir -p ~/$HOME/aharoJ
		echo "Created the ~/$HOME/aharoJ directory."
	fi

	# Clone the repository
	cd ~/$HOME/aharoJ
	git clone "$repo_url"

	# Navigate to the specified path and open Obsidian
	cd ~/$HOME/aharoJ/FHWA/DOCS

	# Check the operating system
	if [[ "$OSTYPE" == "darwin"* ]]; then
		# macOS
		open .
	elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
		# Linux (Ubuntu)
		xdg-open .
	else
		echo "Unsupported operating system."
		exit 1
	fi


	# Navigate to the specified path
	cd ~/aharoJ/FHWA/CODE

	# Check which editors are available and open the directory
	if command -v code &> /dev/null; then
		# Visual Studio Code is available
		code .
	elif command -v subl &> /dev/null; then
		# Sublime Text is available
		subl .
	elif command -v vim &> /dev/null; then
		# Vim is available
		vim .
	else
		echo "No supported editors found. You can manually open the directory."
	fi


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

# Clone the repository and open Obsidian
echo "Cloning repository and opening Obsidian..."
clone_repo_and_open_obsidian

echo "Setup completed! Enjoy using Obsidian to access your Markdown notes."
