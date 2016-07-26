# Backups, swaps and undos are stored here.
mkdir -p $DOTFILES/caches/vim
mkdir -p $DOTFILES/link/bundle

git clone https://github.com/Shougo/neobundle.vim $DOTFILES/link/.vim/bundle/neobundle.vim


# Download Vim plugins.
if [[ "$(type -P vim)" ]]; then
  vim +NeoBundleCheck
fi
