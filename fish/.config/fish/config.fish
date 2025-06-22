if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -U fish_user_paths $HOME/.npm-global/bin $fish_user_paths

set -U fish_user_paths $HOME/.cargo/bin: $fish_user_paths
set -U fish_user_paths /usr/lib/jvm/java-17-openjdk/bin $fish_user_paths

set fish_greeting ""
# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always
alias unlock="sudo rm /var/lib/pacman/db.lck"

#arcolinux logout unlock
alias rmlogoutlock="sudo rm /tmp/arcologout.lock"

#which graphical card is working
alias whichvga="/usr/local/bin/arcolinux-which-vga"

#free
alias free="free -mt"
alias update="sudo pacman -Syu"
alias f="find . -type f -not -path '*/.git/*' -not -path '*/node_modules/*' | fzf --height 100% --layout reverse --border --preview 'bat --color=always {}' --bind 'enter:become(nvim {})'"
alias kittyrc="cd ~/.config/kitty/ && v kitty.conf"
alias work="cd ~/nz_work_space/ && ll -a"
alias js="cd ~/nz_work_space/js/ && ll -a"
alias ts="cd ~/nz_work_space/ts/ && ll -a"
alias web="cd ~/nz_work_space/web-app/ && ll -a"
alias tmuxrc="nvim ~/.tmux.conf"
alias dot="cd ~/dotfiles && ll -a"
alias v="clear && nvim -n ."
alias fastkey="xset r rate 160 40 && echo faster  100ms with 50 word key"
alias zshrc="nvim ~/.zshrc"
alias zimrc="nvim ~/.zimrc"
alias vimrc="cd ~/.config/nvim && nvim"
alias vim="nvim"
alias fishrc="cd ~/.config/fish/ && nvim ./config.fish"
alias ls="eza  --icons -aF --group-directories-first "
alias ll="eza  -alF -b -S --group-directories-first --icons"
alias l="eza -a"
alias d="ddgr"
set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# pnpm
set -gx PNPM_HOME "/home/nz/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end]
#
#!/usr/bin/env fish

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
