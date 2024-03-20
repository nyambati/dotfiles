# Custom aliases
# system commands
alias shell="exec $SHELL"
alias del="rm -rf"
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

alias com="git commit"
alias ga="git add"
alias gs="git status"
alias gl="git log"
alias ca="com --amend"
alias goto="git checkout"
alias master="goto master"
alias main="goto main"
alias develop="goto develop"
alias staging="goto staging"
alias gb="git branch"
alias gba="gb -a"
alias gdb="git branch -D"
alias glp="git log --pretty=oneline"
alias gcl="git clone"
alias gra="git remote add"
alias gr="git remote"
alias gpr="git pull --rebase origin"

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
alias k="k9s"
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

alias zc="code ~/.zshrc"
alias ozc="code ~/.oh-my-zsh"
alias z=zed
alias c=colima
alias cs="c start --cpu 2 --memory 8"
alias ch="chezmoi"
