# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export TERM="xterm-256color"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

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
# DISABLE_MAGIC_FUNCTIONS="true"

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
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    git-extras
    git-flow
    zsh-autosuggestions
    zsh-completions
    zsh-syntax-highlighting
    extract
    history-substring-search
    pip
    python
    rust
    tmux
    catimg
    compleat
    dircycle
    vi-mode
    dirhistory
    colored-man-pages
)
autoload -Uz compinit
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
    compinit;
else
    compinit -C;
fi;

autoload zcalc
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
fpath+=$HOME/.local/fpath

export EDITOR=nvim
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line

export GPG_TTY=$(tty)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

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

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir virtualenv conda vi_mode)
POWERLEVEL9K_VI_VISUAL_MODE_STRING='VISUAL'
POWERLEVEL9K_VI_MODE_VISUAL_BACKGROUND=blue
POWERLEVEL9K_VI_MODE_VISUAL_FOREGROUND=black
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND=blue
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND=orange
POWERLEVEL9K_VI_INSERT_MODE_STRING=''
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND=black
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND=black
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time status vcs)
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_PYTHON_ICON='\ue73C'
POWERLEVEL9K_CONTEXT_TEMPLATE=$'\ue795'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='201'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='017'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='125'
POWERLEVEL9K_DIR_ETC_FOREGROUND='125'
POWERLEVEL9K_DIR_STATUS_OK_BACKGROUND='013'
POWERLEVEL9K_HISTORY_BACKGROUND='013'
POWERLEVEL9K_HISTORY_FOREGROUND='044'
POWERLEVEL9K_TIME_BACKGROUND='201'
POWERLEVEL9K_TIME_FOREGROUND='255'
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias sudo='sudo -E'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias open='xdg-open'
alias vim='nvim'
alias :q='exit'
alias :e=$EDITOR
alias zshrc='$EDITOR ~/.zshrc'

alias ls='eza'
alias l='eza -lhT -L 1 --group-directories-first --icons=auto --colour-scale=all --time-style "+%Y-%m-%d %H:%M" --group --git'
alias la='l -A'
alias ll='l -a'
alias lsa='l'
alias lu='l --total-size'
alias tree='tree --dirsfirst -I __pycache__ -I .git'
alias catimg='catimg -w 64'
alias calc='insect'

alias valgrind='colour-valgrind'
alias bat='batcat'

alias glog="git log --graph --decorate --pretty=format:'%C(auto)%h%d %s %C(dim white)(%ar by <%aN>)%Creset'"
alias gloga="glog --all"

export PATH=$HOME/.deno/bin:$PATH
export PATH=$HOME/.mlir/bin:$PATH

# export MANPAGER="sh -c 'col -bx | batcat -l man -p'"
export MANPAGER="nvim +Man!"

alias -g -- -h='-h 2>&1 | batcat --language=help --style=plain'
alias -g -- --help='--help 2>&1 | batcat --language=help --style=plain'
alias bathelp='bat --plain --language=help'
help() {
    "$@" --help 2>&1 | bathelp
}

cdls() {
    cd $@ && ls
}

mkdir -p /tmp/nvim_undo_history_${USER}

bindkey -M viins 'jk' vi-cmd-mode
bindkey -M viins 'kj' vi-cmd-mode
export KEYTIMEOUT=20

# Case insensitive match
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Group matches and describe
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:corrections' format ' %F{green}-- %d (errors: %e) --%f'
zstyle ':completion:*:descriptions' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*:messages' format ' %F{purple}-- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
zstyle ':completion:*' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*' group-name
zstyle ':completion:*' verbose yes

source "$HOME/.cargo/env"

export CPM_SOURCE_CACHE=$HOME/.cache/CPM
export CMAKE_BUILD_PARALLEL_LEVEL=32

export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
# FIXME: Not working in the latest virtualenvwrapper for some reason
# source $HOME/.local/bin/virtualenvwrapper.sh
unset __WORKON_USING_FILE # flag to check if venv was activated from .python-version

# The following functions help provide an experience similar to that of pyenv but using
# virtualenvwrapper. pyenv uses a .python-version file to track which virtual environment
# should be used.
#
# Checks if the versions specified in .python-version file exist in workon list and
# activates the higher priority environment
__check_venv_consistency() {
    if [[ -v __WORKON_USING_FILE ]]; then
        return
    fi
    FILE_VENVS=($(cat .python-version)) # should be converted to an array for looping
    MATCHED_VENVS=$(comm -12 <(echo "$FILE_VENVS" | xargs -n1 | sort) <(workon | xargs -n1 | sort))

    # if we have common elements in workon list and file list
    if [[ $MATCHED_VENVS ]]; then
        # loop over file list and activate the highest priority matching virtualenv
        for venv in $FILE_VENVS
        do
            if [[ ${MATCHED_VENVS[(ie)$venv]} -le ${#MATCHED_VENVS} ]]; then
                workon "$venv"
                export __WORKON_USING_FILE=1
                return
            fi
        done
    else
        FILE_VENVS_STR=${$(printf '%s,' "${FILE_VENVS[@]}")%,} # join the list with commas
        echo "$(tput setaf 1)Virtualenv(s) \"$FILE_VENVS_STR\" specified in .python-version not present."
        echo "$(tput setaf 3)Create a virtualenv with the name specified in the file or change the version you want."
        echo "$(tput setaf 3)to use by running \"workon-setlocal VIRTUAL_ENV_NAME\" and activate using \"workon VIRTUAL_ENV_NAME\"."
    fi
}

# Checks if virtualenv var exists and if deactivate command exists. May not be searchable
# in subshells if paths get messed up but the env var remains set. In that case, activate
# the venv again and deactivate gracefully. Also, if workon is used manually, don't
# deactivate.
# Also, check if in a git environment. If yes, then don't deactivate inside the git
# environment
# TODO: fix paths getting mangled in subshells
__graceful_venv_deactivate() {
    INSIDE_GIT_REPO=$(git rev-parse --git-dir > /dev/null 2>&1)?
    if [[ -d .git || INSIDE_GIT_REPO -eq 0 ]]; then
        return
    fi
    if [[ -v VIRTUAL_ENV && -v __WORKON_USING_FILE ]]; then
        if [[ $(type deactivate | grep -q "function")? -eq 0 ]]; then
            deactivate
        else
            source "$VIRTUAL_ENV_NAME/bin/activate"
            deactivate
        fi
        unset __WORKON_USING_FILE
    fi
}

# Adds a .python-version file to the current directory and checks consistency for
# activation.
workon-setlocal() {
    echo "$1" > .python-version
    __check_venv_consistency
}
# Removes the .python-version file from the current directory and gracefully deactivates.
workon-unsetlocal() {
    rm -f .python-version
    __graceful_venv_deactivate
}
# If a .python-version file exists in the cwd, check and activate the venv, else
# deactivate accordingly.
chpwd_virtualenv_activate() {
    if [[ -f .python-version ]]; then
        __check_venv_consistency
    else
        __graceful_venv_deactivate
    fi
}
chpwd_functions+=(chpwd_virtualenv_activate) # add the function to the default list

smartresize() {
    mogrify -path $3 -filter Triangle -define filter:support=2 -thumbnail $2 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all =interlace none -colorspace sRGB $1
}
