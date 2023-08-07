


# openpilot simulation ~ quick guide 
- [DO THIS FIRST ](https://github.com/commaai/openpilot/wiki/CARLA)
- [Overview of everything ](https://github.com/commaai/openpilot/blob/master/tools/sim/README.md)
- [INSTALLATION](https://github.com/commaai/openpilot/blob/master/tools/README.md)
- how-to install physically:
	- [installing comma two](https://www.youtube.com/watch?v=PyGCaiQc-C8)
- how to change towns within openpilot
	- https://github.com/commaai/openpilot/blob/2acf6c0b48bf9c52de0a495092b533483ab63359/tools/sim/README.md?plain=1#L40





# openpilot simulation Walkthrough 
## [System Requirements](https://github.com/commaai/openpilot/blob/master/tools/README.md#system-requirements)

openpilot is developed and tested on **Ubuntu 20.04**, which is the primary development target aside from the [supported embedded hardware](https://github.com/commaai/openpilot#running-on-pc). We also have a CI test to verify that openpilot builds on macOS, but the tools are untested. For the best experience, stick to Ubuntu 20.04, otherwise openpilot and the tools should work with minimal to no modifications on macOS and other Linux systems.

## [Setup your PC](https://github.com/commaai/openpilot/blob/master/tools/README.md#setup-your-pc)

First, clone openpilot:

```shell
cd ~
git clone https://github.com/commaai/openpilot.git

cd openpilot
git submodule update --init
```

Then, run the setup script:

```shell
# for Ubuntu 20.04 LTS
tools/ubuntu_setup.sh

# for macOS
tools/mac_setup.sh
```

Activate a shell with the Python dependencies installed:

```shell
cd openpilot && poetry shell
```

Build openpilot with this command:

```shell
scons -u -j$(nproc)
```

### [Windows](https://github.com/commaai/openpilot/blob/master/tools/README.md#windows)

## [CTF](https://github.com/commaai/openpilot/blob/master/tools/README.md#ctf)
Learn about the openpilot ecosystem and tools by playing our [CTF](https://github.com/commaai/openpilot/blob/master/tools/CTF.md).
## [Directory Structure](https://github.com/commaai/openpilot/blob/master/tools/README.md#directory-structure)

```
├── ubuntu_setup.sh     # Setup script for Ubuntu
├── mac_setup.sh        # Setup script for macOS
├── cabana/             # View and plot CAN messages from drives or in realtime
├── joystick/           # Control your car with a joystick
├── lib/                # Libraries to support the tools and reading openpilot logs
├── plotjuggler/        # A tool to plot openpilot logs
├── replay/             # Replay drives and mock openpilot services
├── scripts/            # Miscellaneous scripts
├── serial/             # Tools for using the comma serial
├── sim/                # Run openpilot in a simulator
├── ssh/                # SSH into a comma device
└── webcam/             # Run openpilot on a PC with webcams
```





