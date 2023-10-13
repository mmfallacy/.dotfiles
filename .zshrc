# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt nomatch notify
setopt extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"

# End of lines configured by Zap installer

plug "agkozak/zsh-z"
zstyle ':completion:*' menu select

# The following lines were added by compinstall
zstyle :compinstall filename '/home/mmfallacy/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls='ls --color=auto'
alias rm='rm -I'
alias grep='grep --color=auto'
alias icat='kitty +kitten icat'
alias paru='paru --bottomup'

eval "$(starship init zsh)"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/mmfallacy/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/mmfallacy/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/mmfallacy/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/mmfallacy/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# pnpm
export PNPM_HOME="/home/mmfallacy/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# cargo
export PATH="$HOME/.cargo/bin:$PATH"
# cargo end

# Use mason as a "plugin manager" for linters and formatters
export PATH="$HOME/.local/share/nvim/mason/bin:$PATH"
