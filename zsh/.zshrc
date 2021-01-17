# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/drvy/.config/.oh-my-zsh"
ZSH_THEME="drvy"

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="false"
DISABLE_AUTO_UPDATE="false"
DISABLE_UPDATE_PROMPT="false"
export UPDATE_ZSH_DAYS=13
DISABLE_MAGIC_FUNCTIONS=false
DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="false"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="dd.mm.yyyy"

# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#414141"

source $ZSH/oh-my-zsh.sh
# export LANG=en_US.UTF-8


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

function precmd() {
    if [ -z "$NEW_LINE_BEFORE_PROMPT" ]; then
        NEW_LINE_BEFORE_PROMPT=1
    elif [ "$NEW_LINE_BEFORE_PROMPT" -eq 1 ]; then
        echo "\n"
    fi 
}

# bash completion for the `wp` command
autoload bashcompinit
bashcompinit

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
