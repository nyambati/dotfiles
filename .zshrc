# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export GOPATH=$HOME/Go

export PATH=$PATH:$(go env GOPATH)/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

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
#ENABLE_CORRECTION="true"

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
plugins=(zsh-autosuggestions zsh-kubectl-prompt)

source $ZSH/oh-my-zsh.sh

# User configuration

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
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
alias y="yadm"
alias ys="y status"
alias ya="y add"
alias yc="y commit -s"
alias yp="y push origin master"
alias yca="yc --amend"
alias ypr="y pull --rebase"

# npm aliases

alias ni="npm install --save"
alias nu="npm uninstall"
alias nug="npm uninstall -g"
alias nig="npm install -g"

# git aliases

alias com="git commit -s"
alias ga="git add"
alias gs="git status"
alias gl="git log"
alias ca="git commit -s --amend"
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
alias gpr="git pull --rebase"

# docker aliases
alias dc="docker-compose"

# kubenertes
alias kube="kubectl"
alias kb="kubectl"
alias kgp="kube get pods"
alias kgs="kube get secrets"
alias kgsv="kube get services"
alias kl="kube logs"
alias kd="kube delete"
alias kgc="kube get cronjobs"
alias kx="kube exec -it"
alias kd="kube delete"
alias kdp="kube delete pods"
alias kds="kube describe"
alias ks="k8sec"
alias ktx="kubectx"
alias ctx="kubectx"
alias kns="kubens"
alias kpf="kube port-forward"
# php

alias art="php artisan"
alias tinker="art tinker"

# Google Cloud plartform

alias gcp="gcloud"

# terraform 
alias t=terraform
alias tp="terraform plan"
alias ta="terraform apply"
alias trs="terraform refresh"
alias tw="terraform workspace"
alias twn="terraform workspace new"
alias twl="terraform workspace list"
alias twr="terraform workspace remove"
alias tws="terraform workspace select"

# minikube
alias ms="minikube start"
alias mtp="minikube stop"

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# custom config

grep -slR "PRIVATE" ~/.ssh | xargs ssh-add &> /dev/null

# custom function
gp () {
  git push origin `git rev-parse --abbrev-ref HEAD` $@
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

b64enc() {
	local readonly _v=$1
	echo $1 | base64 --decode 
}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/bin/google-cloud-sdk/path.zsh.inc' ]; then . '/usr/local/bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/usr/local/bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/usr/local/bin/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export GPG_TTY=/dev/ttys001
export LC_ALL=en_US.UTF-8

autoload -U colors; colors
RPROMPT='%{$fg[blue]%}($ZSH_KUBECTL_PROMPT)%{$reset_color%}'

source $HOME/workspace/hero/.hero
