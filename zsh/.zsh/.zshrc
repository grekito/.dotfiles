#zstyle :compinstall filename '/home/costa/.zsh/.zshrc'

autoload -Uz compinit
compinit

HISTFILE=~/.zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000

# added to PATH and export for config
export ZSH=$HOME/.zsh
export PATH=/home/costa/.local/bin:$PATH
export PATH="$HOME/.ghcup/bin:$PATH"

