# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export LSP_USE_PLISTS=true #for emacs lsp



# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="gentoo"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?



# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    bundler
    dotenv
    tmux
    tldr
    zoxide
    aliases
    zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"
# You may need to manually set your language environment
export LANG=en_US.UTF-8

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # nvm for zsh
# Preferred editor for local and remote sessions 
export PKG_CONFIG_PATH="$HOME/opt/SDL3/lib64/pkgconfig:$HOME/opt/raylib5.5/lib64/pkgconfig:$PKG_CONFIG_PATH"

# npm global
export PATH="$HOME/.npm-global/bin:$PATH"

# local bins
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"


if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# ~/.config/zsh/aliases.zsh
# --- apps ---
alias qute='QT_QPA_PLATFORM=xcb qutebrowser'
alias v='yazi'
alias d='ddgr'

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
alias web='cd ~/nz_work_space/web-app/ && ll -a'
alias lab='cd ~/nz_work_space/ && ll -a'
alias dot='cd ~/dotfiles && ll -a'

# --- config shortcuts ---
alias kittyrc='cd ~/.config/kitty/ && nvim kitty.conf'
alias fishrc='nvim ~/.config/fish/config.fish'
alias zshrc='nvim ~/.zshrc'
alias zimrc='nvim ~/.zimrc'
alias vimrc='cd ~/.config/nvim && nvim'
alias nvimrc='nvim ~/.config/nvim/'
alias tmuxrc='nvim ~/.tmux.conf'
alias q='exit'
# --- tools ---
alias fasmdoc='jvim -R /usr/share/doc/fasm/fasm.txt'
alias ghidra_auto='python3 ~/ghidra.py'
alias whichvga='/usr/local/bin/arcolinux-which-vga'
alias nyxt11='GDK_BACKEND=x11 nyxt'
# --- file listing (modern eza) ---
alias ls='eza --icons -aF --group-directories-first'
alias ll='eza -alF -b -S --group-directories-first --icons'
alias l='eza -a'

ctfenv() {
    source ~/ctf/bin/activate
}

em() {
    if emacsclient -e "(emacs-pid)" >/dev/null 2>&1; then
        emacsclient -c -a ""
    else
        emacs --daemon
        sleep 1
        emacsclient -c -a ""
    fi
}
emc() {
    if emacsclient -e "(emacs-pid)" >/dev/null 2>&1; then
        emacsclient -c -a ""
    else
        emacs --init-directory=~/.config/emacs/ --daemon
        sleep 1
        emacsclient -c -a ""
    fi
}
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
