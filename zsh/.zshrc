# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
#
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Path to your oh-my-zsh installation.
export ZSH="/home/drvy/.config/oh-my-zsh"
ZSH_THEME="drvy"
export UPDATE_ZSH_DAYS=13
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#414141"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

nvm() {
  echo "🚨 NVM not loaded! Loading now..."
  unset -f nvm
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  nvm "$@"
}
alias vim="nvim"
alias svim="nvim -u /home/drvy/.config/SpaceVim/vimrc"
alias spacevim="svim"
alias sudo="doas"
alias dockc="sudo docker-compose"
alias phpcs="noglob ~/.config/composer/vendor/bin/phpcs"
alias phpcstest72="phpcs --standard=PHPCompatibility --runtime-set testVersion 7.2 --extensions=php -p ."
alias phpcstest7="phpcs -p . --standard=PHPCompatibility --runtime-set testVersion 7.0- --ignore=node_modules/* --extensions=php"
alias phpcstest5="phpcs -p . --standard=PHPCompatibility --runtime-set testVersion 5.6- --ignore=node_modules/* --extensions=php"

alias wpcstest7="phpcs -p . --standard=PHPCompatibilityWP --runtime-set testVersion 7.0- --extensions=php"
alias wpcstest5="phpcs -p . --standard=PHPCompatibilityWP --runtime-set testVersion 5.6- --extensions=php"
function cd {
    builtin cd "$@" && ls
}

HISTFILE=~/.histfile
HISTSIZE=9999
SAVEHIST=9999
setopt autocd extendedglob
bindkey -e
zstyle :compinstall filename '/home/drvy/.zshrc'
autoload -Uz compinit
compinit

kitty + complete setup zsh | source /dev/stdin
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
