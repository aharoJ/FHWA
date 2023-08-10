<h1 align="center"><b> Angel J. Haro
<img src="https://docs.google.com/uc?export=download&id=1JqFc6WL-cTtJBQgW9tusQAZhQ3H9hGae" alt="" height="25" >
<img src="https://docs.google.com/uc?export=download&id=1HsBpakQVutfOmxBcPbGpKdo_oGEoKJZT" alt="" height="35" >
</h1>

<!-- START  -->
<div align="center">
<a href="https://aharoj.io"><img src="https://img.shields.io/badge/website-000000?style=for-the-badge&logo=Portfolio&logoColor=white" alt="Gmail" /></a>&nbsp;
<a href="https://discord.gg/HDDQ6pUMHt"><img src="https://img.shields.io/badge/Discord-7289DA?style=for-the-badge&logo=discord&logoColor=white" alt="Discord" /></a>&nbsp;
<a href="https://twitter.com/aharoJ"><img src="https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white" alt="Twitter" /></a>&nbsp;
<a href="https://www.linkedin.com/in/aharoJ/"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" alt="Linkedin" /></a>&nbsp;
<a href="https://leetcode.com/aharoJ/"><img src="https://img.shields.io/badge/-LeetCode-FFA116?style=for-the-badge&logo=LeetCode&logoColor=black" alt="LeetCode" /></a>&nbsp;
<br/>
</div>  
<!-- END -->

![Reverse Engineering OpenPilot](<z/aharo 2023-07-31 at 2.34.10 AM.png>)

<h1 align="center"> <b> Setup </b> </h1>

> copy and paste the CLI command into your OS ( macos | linux | debian )

### macos

```
cd ~ && mkdir aharoJ && git clone https://github.com/aharoJ/FHWA.git && cd FHWA && chmod +x setup.sh && ./setup.sh 
```

### debian | ubuntu

```
sudo apt update && sudo apt-get install build-essential && sudo apt install git -y && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && (echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/$USER/.bashrc && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" && cd ~ && mkdir aharoJ && git clone https://github.com/aharoJ/FHWA.git && cd FHWA && chmod +x setup.sh && ./setup.sh  && sudo snap install obsidian --classic
```

### windows

- 🤢 in progress

<h1 align="center"> <b> Tree </b> </h1>

## documentation

### `~/aharoJ/FHWA/DOCS`

- docker
- carla
- unreal
- openpilot
- pip | pip3
- pyenv
- poetry shell
  - extremly important for openpilot
- carma
- ubuntu
- bash
- cuda | nvidia

## code stuff

### `~/aharoJ/FHWA/CODE`

- bashrc
- fish
- vim
- tmux
- docker
- python

## dev notes

> In summary, my script starts by installing Homebrew, which is the macOS package manager. Then, it handles the installation of Obsidian and yakitrak/obs using Homebrew on macOS. For Linux users, it prompts to choose between installing Obsidian using Homebrew or Snap (recommend Homebrew!). After that, the script goes on to clone my GitHub repository. It takes care of opening Obsidian and various code editors in their designated directories.
