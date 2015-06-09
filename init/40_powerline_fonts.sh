# Backups, swaps and undos are stored here.
mkdir -p $DOTFILES/link/powerline

git clone https://github.com/powerline/fonts $DOTFILES/link/powerline
cd $DOTFILES/link/powerline
./install.sh

