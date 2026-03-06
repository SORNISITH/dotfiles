# Dotfiles & Environment Setup

## 🧠 Essentials

### 🖥️ Terminal Multiplexer

**tmux** – can't live without tmux
yazi <https://yazi-rs.github.io/docs/next/tips/#smart-paste>

```sh
sudo pacman -S tmux
```

Install modern fonts for terminal usage:

```sh
sudo pacman -S ttf-ubuntu-font-family ttf-fira-code nerd-fonts
```

## 🔌 Tmux Plugin Manager

Clone TPM (Tmux Plugin Manager):

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Install tmux plugins (press inside tmux):

```
Ctrl + B then I
or  Ctrl + Space then I
```

---

### 🧰 Utilities

Install essential tools:

```sh
sudo pacman -S stow tmux neovim zsh bat xterm man
```

Additional useful tools:

```sh
sudo pacman -S p7zip unrar tar rsync git neofetch htop exfat-utils fuse-exfat ntfs-3g flac jasper aria2
```

### 🧪 Shell Framework

**zimfw** – A Zsh configuration framework

```sh
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
```

### 🔤 Fonts

---

## ⚙️ Configuration

Link dotfiles using GNU Stow:

```sh
stow fish zsh nvim
```

---

## 🚀 Prompt

Install [Starship](https://starship.rs/):

```sh
curl -sS https://starship.rs/install.sh | sh
```

---

## 🐟 Fish Shell + Tools

Install [Fish shell](https://fishshell.com):

```sh
sudo pacman -S fish
```

Install [fisher](https://github.com/jorgebucaran/fisher):

```sh
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
```

Useful Fish plugins:  
<https://fig.io/manual/fisher/install>

- [jethrokuan/z](https://github.com/jethrokuan/z) – directory jumping
- [fisher](https://github.com/jorgebucaran/fisher) – plugin manager

---

--
fisher install

IlanCosman/tide@v5
pure-fish/pure
jorgebucaran/hydro
jethrokuan/z
PatrickF1/fzf.fish
jorgebucaran/nvm.fish
franciscolourenco/done
jorgebucaran/replay.fish
jorgebucaran/spark.fish
joseluisq/gitnow@2.10.0

## 🔧 Other Recommended Tools

- [Exa](https://the.exa.website/) – modern replacement for `ls`
- [ghq](https://github.com/x-motemen/ghq) – clone & manage remote repositories
- [peco](https://github.com/peco/peco) – interactive filtering tool
