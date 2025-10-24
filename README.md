# 🌌 Arxctl  

### _a.k.a Just-A-Beginner-Arch-User-Dots_
**Setup overview**
<img width="1366" height="769" alt="image" src="https://github.com/user-attachments/assets/dc3a47ee-5c23-4820-8bd9-1976966fb0cf" />

---

## 🧠 What is Arx?

**Arx** (short for *Arxctl*) is my all-in-one, multi-script command-line tool that automates and manages various system tasks on my Arch Linux setup.

This project started out as part of my dotfiles — a collection of configs, scripts, and tools I made while learning to rice my desktop.

I began my journey in **May 2025** knowing *almost nothing* about programming.  
Since then, I’ve learned a bit of **Bash**, **Python** (thanks to school), and about **1% of JavaScript** (I even made a Discord bot that failed… out of boredom 😅).

So yeah — this is my first real GitHub project, and it’s all part of my Arch learning experience.

---

## 🧩 What’s Inside?

This repo contains all the configs and scripts that make up my personal Arch setup.

### ⚙️ Scripts & Utilities
- **`arx`** — The main Bash script that handles various tasks like theme switching, wallpaper management, etc.
- **Aliases** — Quality-of-life command shortcuts (e.g., `pac` instead of `sudo pacman -S`).
- **Theme switcher** — Easily switch between system-wide themes.

### 💄 UI & Theming
- **Waybar** — A custom setup inspired by **Celestia Dots**.  
- **Flavours** — Used as a Base16 theme builder for consistent system-wide colors.  
- **Foot** — My terminal emulator of choice.  
- **Mako** — Notification daemon (used instead of `swaync`).  
- **Yin** — Handles both live and static wallpapers (`.mp4` and `.jpg`).  
  _Why Yin? Because converting MP4s to GIFs is pain 😭._

### 🖼 Wallpapers
- Wallpapers are stored in `~/.config/walls`.
- Includes both static and live wallpapers (used with Yin or swww).
- A few sample wallpapers are included since this repo also serves as a **backup** for my setup.

### 🧠 Extras
- A Discord setup that **auto-themes** based on your current wallpaper.  
  _Disclaimer: totally untested — so if it breaks, it breaks!_

### 🪟 Hyprland
- Full Hyprland config included.
- Comes with integrated theming and gap tweaks.

---

## 🧰 Installation

Make sure you have the following installed:

```bash
sudo pacman -S git stow waybar foot mako hyprland 
yay -S flavours yin-git
git clone https://github.com/NotFlazr/Arx-dots.git
cd ~/Arx-dots 
```
**Then just copy the contents except .git and put it in your homefolder**

## Parts of the theme 
Fofi <img width="351" height="353" alt="image" src="https://github.com/user-attachments/assets/133817e5-5953-45e1-8edf-1bd603640a0e" />
Foot <img width="1313" height="769" alt="image" src="https://github.com/user-attachments/assets/0f1eb882-02c4-48e0-859a-a2bbc2b9e75e" />
Discord <img width="737" height="536" alt="image" src="https://github.com/user-attachments/assets/dd6f5a2f-a9cc-45a5-a515-603978f24165" />
Themeswitcher
<img width="1367" height="769" alt="image" src="https://github.com/user-attachments/assets/3544ea87-4c9c-4c5a-a648-c629f0badd8c" />
Mako(notification daemon
<img width="399" height="57" alt="image" src="https://github.com/user-attachments/assets/c1d28053-0c74-4a32-b7ce-87e8f72a3b24" />
Nemo(file manager)
Btw you can also use Thunar
<img width="1314" height="763" alt="image" src="https://github.com/user-attachments/assets/3830cad8-d1cb-4223-a08b-ca21931f7f02" />




