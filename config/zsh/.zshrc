lib=$HOME/.local/lib
opt=$HOME/.local/opt
bin=$HOME/.local/bin

export SDL_VIDEODRIVER=wayland

export CARGO_HOME=$lib/cargo
export RUSTUP_HOME=$lib/rustup
#export ZIG_HOME=$lib/zig/current

code_bins=$CARGO_HOME/bin:$RUSTUP_HOME/bin:$ZIG_HOME

export PATH=$bin:$PATH:$code_bins

export EDITOR=hx
export LESSHISTFILE=$HOME/.config/lesshst


DISABLE_MAGIC_FUNCTIONS=true

export ZSH="$HOME/.local/lib/omz"

ZSH_THEME="robbyrussell"

plugins=(
    sudo
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
)

#eval "$(zoxide init zsh)"

source $ZSH/oh-my-zsh.sh

# ALIASES
## PERSONAL
alias edit=$EDITOR

## Utils
# LS
alias ls="lsd -F --group-directories-first"
alias l="lsd -lF --header --group-directories-first"
alias la="lsd -AF --header --group-directories-first"
alias ll="lsd -lAF --header --group-directories-first"

# VIM
alias vim=$EDITOR
# alias code="nohup nvimgui -c Neotree $@ > /dev/null 2>&1 &; disown"

alias wget="wget --hsts-file ~/.config/wget-hsts"

alias dwn="cd $HOME/.local/share/xdg-downloads/"

## OLD ALIASES 
#alias rupy="rustpython"

#alias l="exa -l -b --group-directories-first -@"
#alias ll="exa -l -a -b --group-directories-first -@"
#alias la="exa -a -b --group-directories-first -@"


export PD=$HOME/data/documents/projects
alias cat="bat --theme Nord --style grid,numbers"
