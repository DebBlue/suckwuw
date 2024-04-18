# suckwuw - Dynamic Window Manager


## 🔗 Links
[[suckwuw📁🔗]](https://github.com/DebBlue/suckwuw)
[[Wallpapers🖼️]](https://github.com/DebBlue/Wallpapers)



## Introduction

Welcome to the suckwuw, the dynamic window manager crafted for supreme efficiency and aesthetic mastery. Prepare to embark on a journey of seamless multitasking and sublime desktop customization.## Installation and Configuration

To wield the power of suckwuw, follow these sacred steps:

1. **Install Required Packages:**
   - **Arch Linux and Variants:**
     ```bash
     sudo pacman -Sy base-devel git libx11 libxft xorg-server xorg-xinit ttf-jetbrains-mono-nerd noto-fonts noto-fonts-emoji picom libxinerama maim xclip
     ```
   - **Debian and Variants:**
     ```bash
     sudo apt install libx11-dev libxft-dev libxinerama-dev xorg
     ```

2. **Clone the Repository:**
   ```bash
   git clone https://github.com/DebBlue/suckwuw.git

   ```
3. **Build and Install:**
   ```bash
   sudo rm st/config.h
   sudo rm dmenu/config.h
   sudo rm slstatus/config.h
   sudo rm dwm/config.h

   sudo make clean install -C dmenu
   sudo make clean install -C slstatus
   sudo make clean install -C st
   sudo make clean install -C dwm
   ```

4. **Configure ~/.xinitrc:**
Use your preferred text editor to create or edit ~/.xinitrc and add the following lines:
   ```bash 
   picom &
   slstatus &
   exec dwm
   ```
5. **Optional: Wallpaper Integration:**
If you desire exquisite wallpapers, clone the wallpaper repository:
   ```bash
   git clone https://github.com/DebBlue/Wallpapers.git
   ```
Add this line to ~/.xinitrc to change wallpapers every 30 seconds:
   ```bash
   (sleep 5 && "/home/bluecake/Pictures/wallpapers/wondering_waifu.sh") &
   ```
6. **Start X Session:**
If you're not using a display manager, type the following command to initiate the glory of suckwuw:
   ```bash
   'startx
   ```
7. **Desktop Entry (Optional):**
For those who wish to bask in the elegance of suckwuw via a desktop entry, create suckwuw.desktop in /usr/share/applications/ with the following content:
   ```bash
   [Desktop Entry]
   Encoding=UTF-8
   Name=suckwuw
   Comment=Suckwuw Dynamic window manager
   Exec=/home/username/suckwuw/dwm/dwm 
   Icon=dwm
   Type=XSession
   ```
8. **Reboot:**
Embrace the transformation by rebooting your system and invoking the might of suckwuw.

May your journey with suckwuw be as epic as an adventure in the realm of Overlord! 🐉✨
   ```bash
   reboo
   ```

## Support

Show Your Support
Show your support by giving this repository a :🌟: and consider forking it to contribute back to the project!


![Logo](https://i.ibb.co/JQ29wsw/pngwing-com.png)
