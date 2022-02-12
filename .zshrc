# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

unsetopt BEEP
export EDITOR=vi
export GNUTERM="qt font \"Helvetica\""

#-----------------------------ZSH_PROMPT------------------------------------

source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/.p10k.zsh

#manual sourcings
source $HOME/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#--------customization--------
autoload -U compinit && compinit

#allows for menu selection --> navigating through lists
zstyle ':completion:*' menu select
#completes prompt w/ selection from menu as you scroll
setopt menu_complete

#------------------------CONFIG-----------------------------

source ~/.zsh_config

export NODE_TLS_REJECT_UNAUTHORIZED=1

# Created by `pipx` on 2021-05-29 04:10:29
export PATH="$PATH:/Users/sidbaskaran/.local/bin"

# Created by `pipx` on 2021-05-29 04:10:30
export PATH="$PATH:/Users/sidbaskaran/Library/Python/3.8/bin"

LS_COLORS=$LS_COLORS:'di=0;36' ; export LS_COLORS
PS1='[\033[1;36m]\u[\033[1;31m]@[\033[1;32m]\h:[\033[1;35m]\w[\033[1;31m]$[\033[0m] '
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/sidbaskaran/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/sidbaskaran/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/sidbaskaran/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/sidbaskaran/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
