eval "$(oh-my-posh init bash --config /home/flazr/bubbles.omp.json)"

export PATH="$HOME/.nimble/bin:$HOME/.cargo/bin:$HOME/.local/bin:$PATH"

fastfetch

[[ $- != *i* ]] && return

alias pac="sudo pacman -S"
alias pacr="sudo pacman -Rns"
alias i="yay -S"
alias r="yay -Rns"
alias s="yay -Ss"
alias u="yay -Syu"
alias a="arx"

alias hyprconf="nvim ~/.config/hypr/hyprland.conf"
alias wayconf="nvim ~/.config/waybar/config.jsonc"
alias waystyle="nvim ~/.config/waybar/style.css"
alias footconf="nvim ~/.config/foot/part2.ini"
alias bashrc="nvim ~/.bashrc"
alias reload="source ~/.bashrc"

alias ls='exa -lh --group-directories-first --icons --color=auto'
alias grep='grep --color=auto'
alias walls="~/.config/walls/"

