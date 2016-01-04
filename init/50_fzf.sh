# Installs Bash fuzzy finder
# See https://github.com/junegunn/fzf
sudo apt-get install libncurses5-dev ruby-dev
git clone --depth 1 https://github.com/junegunn/fzf.git $DOTFILES/link/.fzf
$DOTFILES/link/.fzf/install
