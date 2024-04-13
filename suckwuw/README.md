
# Brightness and Sound Control Setup

This guide will help you set up brightness and sound control on your system using light command for brightness and alsa-utils for sound control.

# Prerequisites

Before you begin, ensure you have yay package manager installed on your system. If not, you can install it by following the instructions here.

```bash
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

# Installation
Run the following commands in your terminal:
```bash
yay -Sy alsa-utils alsa-plugins light
```
this command will install the necessary packages: alsa-utils, alsa-plugins, and light.

# Setting Permissions for Brightness Control

To allow light command to control brightness without needing superuser privileges, you need to set the setuid bit on the light binary.

1. Find the location of the light binary by running:
```bash
    whereis light
```
2. Once you have the path to the light binary (for example, /usr/bin/light), set the setuid bit using the following command:
```bash
sudo chmod +s /usr/bin/light
```

# Usage - Brightness Control
After completing the installation and setting permissions, you can now use the light command to control the brightness of your system. Here are some usage examples:

By Pressing A MODKEY + brightness key on keybord

# Sound Control
For sound control, you can use alsa-utils. It provides command-line tools to control sound settings on your system.

By Pressing A MODKEY + sound key on keyborad 



