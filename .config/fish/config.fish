if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting "nz config fish"
set -gx TERM xterm-256color
# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

alias f="fzf --height 100% --layout reverse --border --preview 'bat --color=always {}' --bind 'enter:become(nvim {})'"
alias ide="~/ide.sh"
alias ssrc="v ~/dotfiles/.config/starship.toml"
alias kittyrc="cd ~/.config/kitty/ && v kitty.conf"
alias work="cd ~/nz_work_space/ && ll -a"
alias c="cd ~/nz_work_space/c-prog/ && ll -a"
alias js="cd ~/nz_work_space/js/ && ll -a"
alias ts="cd ~/nz_work_space/ts/ && ll -a"
alias web="cd ~/nz_work_space/web-app/ && ll -a"
alias tmuxrc="nvim ~/dotfiles/.tmux.conf"
alias dot="cd ~/dotfiles && ll -a"
alias v="clear && nvim -n ."
alias alarc="v ~/dotfiles/.config/alacritty/alacritty.toml"
alias fastkey="xset r rate 160 40 && echo faster  100ms with 50 word key"
alias zshrc="nvim ~/dotfiles/.zshrc"
alias zimrc="nvim ~/dotfiles/.zimrc"
alias vimrc="cd ~/.config/nvim && nvim"
alias vim="nvim"
alias fishrc="cd ~/.config/fish/ && nvim ./config.fish"
alias ls="exa --icons -a"
alias ll="exa -a"
set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH
