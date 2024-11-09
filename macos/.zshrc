# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/ris-tlp/.oh-my-zsh"
export PATH="$PATH:/Users/ris-tlp/Development/flutter/bin"
export SSLKEYLOGFILE="/Users/ris-tlp/ssl.log"

ZSH_THEME="powerlevel10k/powerlevel10k"


# Aliases
alias yrestart="yabai --restart-service"
alias ystart="yabai --start-service"
alias ystop="yabai --stop-service"
alias ls="eza --icons"

# NOTE TAKING
export NOTES_DIRECTORY=/Users/ris-tlp/"My Drive"/UMD
export EDITOR=vim

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git command-not-found docker python pipenv virtualenv)


# Aliases for ez links



source $ZSH/oh-my-zsh.sh

# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ris-tlp/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ris-tlp/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ris-tlp/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ris-tlp/Downloads/google-cloud-sdk/completion.zsh.inc'; fi


# Load Angular CLI autocompletion.
source <(ng completion script)

alias ls="eza --icons"
alias venv="source .venv/bin/activate"


# Created by `pipx` on 2024-07-09 18:16:29
export PATH="$PATH:/Users/ris-tlp/.local/bin"
