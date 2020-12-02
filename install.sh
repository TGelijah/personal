mkdir ~/.vim
mkdir ~/.vim/colors

cp -r vim/color/tool ~/.vim/colors
cp vim/color/glo.vim ~/.vim/colors
cp vim/.vimrc ~/


sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

cp ohmyzsh/theme/glo.zsh-theme ~/.oh-my-zsh/themes
cp ohmyzsh/.zshrc ~/

cp .aliases .hashes ~/
