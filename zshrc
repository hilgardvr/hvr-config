# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/go/bin

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
plugins=(git docker docker-compose)

source $ZSH/oh-my-zsh.sh

# User configuration


# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='vi'
fi
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


case ":$PATH:" in
    *:"$HOME/.cabal/bin":*)
        ;;
    *)
        export PATH="$PATH:$HOME/.cabal/bin"
        ;;
esac
case ":$PATH:" in
    *:"/home/hilgard/.ghcup/bin":*)
        ;;
    *)
        export PATH="$PATH:/home/hilgard/.ghcup/bin"
        ;;
esac

alias saw='docker run -it --rm --env-file ~/.aws/saw-env tbrock/saw'
alias vim="nvim"
#alias vi="nvim"
alias connect_bastion="sshuttle -r bastion@13.246.49.159 -v govtest.qlink.co.za" # --ssh-cmd 'ssh -i ~/.ssh/id_rsa'"
alias connect_bastion_rp="sshuttle -r bastion@13.246.49.159 -v realpaycollect.com:4448"

alias connect_openvpn3="openvpn3 session-start --config ~/.sso-user.ovpn"
alias disconnect_openvpn3="openvpn3 session-manage --config ~/.sso-user.ovpn --disconnect"
#alias aws-profile="aws s3 ls --profile OneSparkDeveloper-150106840756"

alias aws_configure="aws configure sso"
alias connect_aws_login="aws sso login"
alias prod_kubectl="aws eks update-kubeconfig --region af-south-1 --name onespark-prod"
alias dev_kubectl="aws eks update-kubeconfig --region af-south-1 --name onespark-dev"
alias connect_cloud_dev_db="kubectl port-forward service/aurora-non-prod-rds 5999:5432 -n development"
alias connect_cloud_prod_db="kubectl port-forward service/aurora-prod-rds 5999:5432 -n operations"
alias portforward_comms_dev="kubectl port-forward service/notification-service 8083:80 -n development"

alias watch_get_pods_dev="watch kubectl get pods -n admin-system-dev"
alias get_pods_dev="kubectl get pods -n admin-system-dev"
alias get_pods_staging="kubectl get pods -n staging"
alias logs_policy_dev="kubectl logs deployment/policy-service -n admin-system-dev"
alias logs_policy_dev_follow="kubectl logs -f deployment/policy-service -n admin-system-dev"
alias logs_policy_staging="kubectl logs deployment/policy-service -n admin-system-staging"
alias logs_policy_staging_follow="kubectl logs -f deployment/policy-service -n admin-system-staging"
alias logs_policy_prod="kubectl logs deployment/policy-service -n admin-system"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# pnpm
export PNPM_HOME="/home/dev003/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export PATH=/home/dev003/bin:$PATH
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export PATH=$PATH:/home/dev003/.kubectl/
export KUBE_EDITOR=nano

export AWS_PROFILE=OneSparkDeveloper-150106840756

export PATH=$PATH:/home/dev003/.local/share/JetBrains/idea-IU-242.23726.103/bin/
