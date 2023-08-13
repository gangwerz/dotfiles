lib=$HOME/.local/lib
opt=$HOME/.local/opt
bin=$HOME/.local/bin

export SDL_VIDEODRIVER=wayland

export CARGO_HOME=$lib/cargo
export RUSTUP_HOME=$lib/rustup
#export ZIG_HOME=$lib/zig/current

code_bins=$CARGO_HOME/bin:$RUSTUP_HOME/bin:$ZIG_HOME

export PATH=$bin:$PATH:$code_bins

export EDITOR=nvim
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
alias l="lsd -lF --header --group-directories-first --no-symlink"
alias la="lsd -AF --group-directories-first --header"
alias ll="lsd -lAF --header --group-directories-first"

# VIM
alias vim=$EDITOR
alias vi=$EDITOR
# alias code="nohup nvimgui -c Neotree $@ > /dev/null 2>&1 &; disown"

alias wget="wget --hsts-file ~/.config/wget-hsts"

alias dwn="cd $HOME/.local/share/xdg-downloads/"

alias top='gotop --nvidia'
alias utop='utop -init $OCAML_CONF/init'

alias less='bat --theme Nord'

## OLD ALIASES 
#alias rupy="rustpython"

#alias l="exa -l -b --group-directories-first -@"
#alias ll="exa -l -a -b --group-directories-first -@"
#alias la="exa -a -b --group-directories-first -@"


export PD=$HOME/data/documents/projects
alias cat="bat -P --theme Nord --style grid,numbers"

# opam configuration
[[ ! -r /home/gangwerz/.local/lib/opam/opam-init/init.zsh ]]\
	|| source /home/gangwerz/.local/lib/opam/opam-init/init.zsh\
	> /dev/null 2> /dev/null
