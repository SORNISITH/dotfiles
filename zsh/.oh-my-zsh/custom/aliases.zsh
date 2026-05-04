# --- apps ---
alias qute='QT_QPA_PLATFORM=xcb qutebrowser'
alias v='yazi'
alias d='ddgr'

# --- editors ---

alias em='emacsclient -t'
alias nvimrc='nvim ~/.config/nvim/'
alias tmuxrc='nvim ~/.tmux.conf'

# --- system ---
alias unlock='sudo rm -i /var/lib/pacman/db.lck'
alias rmlogoutlock='sudo rm /tmp/arcologout.lock'
alias update='sudo pacman -Syu'
alias free='free -mt'

# --- nginx ---
alias nznginx='sudo /usr/local/nginx/sbin/nginx'
alias nznginxrc='sudo nvim /usr/local/nginx/conf/nginx.conf'

# --- gdb ---
alias gdbdash='gdb -x ~/c_gdb_init/.gdbinit'
alias gdbgef='gdb -x ~/gef_gdb_init/.gdbinit'

# --- navigation ---
alias work='cd ~/nz_work_space/ && ll -a'
alias js='cd ~/nz_work_space/js/ && ll -a'
alias ts='cd ~/nz_work_space/ts/ && ll -a'
alias web='cd ~/nz_work_space/web-app/ && ll -a'
alias lab='cd ~/nz_work_space/ && ll -a'
alias c='cd ~/Desktop/books/ && ll -a'
alias ja='cd ~/nz_work_space/js/Java_icc_homework/'

alias dot='cd ~/dotfiles && ll -a'

# --- config shortcuts ---
alias kittyrc='cd ~/.config/kitty/ && nvim kitty.conf'
alias fishrc='nvim ~/.config/fish/config.fish'
alias zshrc='nvim ~/.zshrc'
alias zimrc='nvim ~/.zimrc'
alias vimrc='cd ~/.config/nvim && nvim'

# --- tools ---
alias fasmdoc='jvim -R /usr/share/doc/fasm/fasm.txt'
alias ghidra_auto='python3 ~/ghidra.py'
alias whichvga='/usr/local/bin/arcolinux-which-vga'

# --- file listing (modern eza) ---
alias ls='eza --icons -aF --group-directories-first'
alias ll='eza -alF -b -S --group-directories-first --icons'
alias l='eza -a'


ctfenv() {
    source ~/ctf/bin/activate
}

