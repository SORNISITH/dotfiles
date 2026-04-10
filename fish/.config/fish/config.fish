if status is-interactive
    # Commands to run in interactive sessions can go here
end
# ----------------------
# Universal paths (persistent across all fish sessions)
# ----------------------
# NPM global bin
set -U fish_user_paths $HOME/.npm-global/bin $fish_user_paths

# Rust cargo bin
set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths
# Java JDK
set -U fish_user_paths /usr/lib/jvm/java-17-openjdk/bin $fish_user_paths
zoxide init fish | source

# ----------------------
# Greeting
# ----------------------
set fish_greeting "" # no greeting

# ----------------------
# Theme / prompt settings
# ----------------------
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

alias qute='QT_QPA_PLATFORM=xcb qutebrowser'
alias unlock="sudo rm -i /var/lib/pacman/db.lck"
alias fasmdoc="jvim -R /usr/share/doc/fasm/fasm.txt"
#arcolinux logout unlock
alias rmlogoutlock="sudo rm /tmp/arcologout.lock"
set -Ux DEBUGINFOD_URLS "https://debuginfod.archlinux.org"
#which graphical card is working
alias whichvga="/usr/local/bin/arcolinux-which-vga"
alias jvim='NVIM_APPNAME="jvim" nvim'
alias g='git'
alias q='exit'
#free
#
alias yazirc="nvim ~/.config/yazi/yazi.toml"
alias nznginx="sudo /usr/local/nginx/sbin/nginx"
alias v="yazi"
alias nznginxrc="sudo nvim /usr/local/nginx/conf/nginx.conf"
#alias gdb="gdb -x ~/c_gdb_init/.gdbinit "
alias free="free -mt"
alias update="sudo pacman -Syu"
alias f="rg --files --hidden -g '!.git/*' -g '!node_modules/*' | fzf --preview 'bat --color=always {}' --bind 'enter:become(nvim {})'"
alias kittyrc="cd ~/.config/kitty/ && v kitty.conf"
alias work="cd ~/nz_work_space/ && ll -a"
alias js="cd ~/nz_work_space/js/ && ll -a"
alias c="cd ~/Desktop/books/ && ll -a"
alias ja="cd ~/nz_work_space/js/Java_icc_homework/"
alias ts="cd ~/nz_work_space/ts/ && ll -a"
alias web="cd ~/nz_work_space/web-app/ && ll -a"
alias tmuxrc="nvim ~/.tmux.conf"
alias dot="cd ~/dotfiles && ll -a"
alias fastkey="xset r rate 160 40 && echo faster  100ms with 50 word key"
alias zshrc="nvim ~/.zshrc"
alias nvimrc="nvim ~/.config/nvim/"
alias zimrc="nvim ~/.zimrc"
alias vimrc="cd ~/.config/nvim && nvim"
alias fishrc="cd ~/.config/fish/ && nvim ./config.fish"
alias ls="eza  --icons -aF --group-directories-first "
alias ll="eza  -alF -b -S --group-directories-first --icons"
alias l="eza -a"
alias d="ddgr"
# ----------------------
# Editor
# ----------------------
set -gx EDITOR nvim

# ----------------------
# PKG_CONFIG_PATH
# ----------------------
set -gx PKG_CONFIG_PATH \
    ~/opt/SDL3/lib64/pkgconfig \
    ~/opt/raylib5.5/lib64/pkgconfig \
    $PKG_CONFIG_PATH

# ----------------------
# PATH (clean with fish_add_path)
# ----------------------

# npm global
fish_add_path ~/.npm-global/bin

# local bins
fish_add_path ~/bin
fish_add_path ~/.local/bin

# node_modules (project-local)
fish_add_path node_modules/.bin

# Go
set -g GOPATH $HOME/go
fish_add_path $GOPATH/bin

# pnpm
set -gx PNPM_HOME "$HOME/.local/share/pnpm"
fish_add_path $PNPM_HOME

# bun
set -gx BUN_INSTALL "$HOME/.bun"
fish_add_path $BUN_INSTALL/bin
# opencode
fish_add_path /home/nz/.opencode/bin
