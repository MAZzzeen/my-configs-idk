# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [ -t 0 ] && [[ -z $TMUX ]] && [[ $- = *i* ]]; then exec tmux; fi
#
fastfetch && echo ""
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH_COMPDUMP="$HOME/.cache/.zcompdump"

alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"
# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zshist
HISTSIZE=1000
setopt HIST_IGNORE_ALL_DUPS
SAVEHIST=100000
setopt autocd
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/maz/.zshrc'

ZSH_AUTOSUGGEST_STRATEGY=(history completion)

ZLE_RPROMPT_INDENT=0

autoload -Uz compinit
compinit
# End of lines added by compinstall
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Set up fzf key bindings and fuzzy completion
source /home/maz/.config/fzfzsh.zsh

fpath=(/usr/share/zsh/site-functions $fpath)

autoload -Uz select-word-style
select-word-style bash

alias ls="eza --icons -la"
alias :q="exit"
alias yeet="sudo pacman -Rns"
alias vi="nvim"
alias cls="clear && fastfetch"


bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey '^H' backward-kill-word
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/p10k.zsh ]] || source ~/.config/p10k.zsh

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme

zstyle ':completion:*:processes' command 'NOCOLORS=1 ps -U $(whoami)|sed "/ps/d"'
zstyle ':completion:*:processes' insert-ids menu yes select
zstyle ':completion:*:processes-names' command 'NOCOLORS=1 ps xho command|sed "s/://g"'
zstyle ':completion:*:processes' sort false

# typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
