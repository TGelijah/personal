mkdir ~/.vim
mkdir ~/.vim/color

cp vim/color ~/.vim/color
cp vim/.vimrc ~/

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

cp ohmyzsh/theme/glo.zsh-theme ~/.oh-my-zsh/themes
cp ohmyzsh/.zshrc ~/

cp .aliases .hashes ~/
