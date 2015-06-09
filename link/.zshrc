source $DOTFILES/link/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
# python
antigen bundle pip
antigen bundle python
antigen bundle virtualenv


antigen bundle rupa/z
antigen bundle command-not-found
antigen bundle ssh-agent

antigen bundle zsh-users/zsh-syntax-highlighting

#antigen theme robbyrussell
antigen theme agnoster

# Tell antigen that youre are done.
antigen apply

setopt HIST_IGNORE_SPACE
