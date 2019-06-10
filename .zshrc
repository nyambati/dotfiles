# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/nyambati/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)
plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Custom aliases
# system commands
alias shell="exec $SHELL"
alias del="rm -rf"
alias md="mkdir"

# npm aliases

alias ni="npm install --save"
alias nig="npm install -g"

# git aliases

alias com="git commit -S"
alias ga="git add"
alias gs="git status"
alias gl="git log"
alias ca="git commit --amend"
alias pl="git pull"
alias goto="git checkout"
alias master="goto master"
alias develop="goto develop"
alias staging="goto staging"
alias gb="git branch"
alias gba="gb -a"
alias gdb="git branch -D"
alias glp="git log --pretty=oneline"
alias gcl="git clone"
alias gra="git remote add"
alias gr="git remote"

# docker aliases
alias dc="docker-compose"

# kubenertes
alias kube="kubectl"
alias kgp="kube get pods"
alias kgs="kube get secrets"
alias kl="kube logs"
alias kd="kube delete"

# php

alias art="php artisan"
alias tinker="art tinker"

# Google Cloud plartform

alias gcp="gcloud"

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# custom config

grep -slR "PRIVATE" ~/.ssh | xargs ssh-add &> /dev/null

# custom function
gp () {
   git push origin `git rev-parse --abbrev-ref HEAD` $@
}

gpr() {
    _branch=$2
    remote=$1
    BRANCH=${_branch:-$(git rev-parse --abbrev-ref HEAD)}
    ORIGIN=${remote:-'origin'}

    git pull --rebase $ORIGIN $BRANCH $@
}

bold=$(tput bold)
underline=$(tput sgr 0 1)
reset=$(tput sgr0)
purple=$(tput setaf 171)
red=$(tput setaf 1)
green=$(tput setaf 76)
tan=$(tput setaf 3)
blue=$(tput setaf 38)

header() {
  printf "\n${bold}${purple}==========  %s  ==========${reset}\n" "$@"
}

arrow() {
  printf " ➜ $@\n"
}

success() {
  printf "${green} ✔ %s${reset}\n" "$@"
}

error() {
  printf "${red} ✖ %s${reset}\n" "$@"
}

warning() {
  printf "${tan} ➜ %s${reset}\n" "$@"
}

underline() {
  printf "${underline}${bold}%s${reset}\n" "$@"
}

bold() {
  printf "${bold}%s${reset}\n" "$@"
}

note() {
  printf "${underline}${bold}${blue}Note:${reset}  ${blue}%s${reset}\n" "$@"
}
