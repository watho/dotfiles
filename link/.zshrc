#autoload -U compinit && compinit

source $DOTFILES/link/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
# python
antigen bundle pip
antigen bundle python
antigen bundle virtualenv


antigen bundle sudo
antigen bundle rupa/z
antigen bundle command-not-found
antigen bundle ssh-agent

antigen bundle zsh-users/zsh-syntax-highlighting

#antigen theme robbyrussell
antigen theme agnoster

# Tell antigen that youre are done.
antigen apply

#history
setopt HIST_IGNORE_SPACE
setopt  SHARE_HISTORY
setopt HISTSIZE=10000
setopt HIST_IGNORE_ALL_DUPS

bindkey -v
