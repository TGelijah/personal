mkdir ~/.vim
mkdir ~/.vim/colors
cp -r vim/color/tools ~/.vim/colors
cp vim/color/glo.vim ~/.vim/colors
cp vim/.vimrc ~/


sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
cp ohmyzsh/theme/glo.zsh-theme ~/.oh-my-zsh/themes
cp ohmyzsh/.zshrc ~
cp terminal/.aliases terminal/.hashes ~

sudo pacman -Syu arduino calibre arduino-builder arduino-ctags atom audacious audacious-plugins audacity texinfo texlive-bibtexextra texlive-bin texlive-core texlive-fontsextra texlive-formatsextra texlive-games texlive-humanities texlive-latexextra texlive-music texlive-pictures texlive-pstricks texlive-publishers texlive-science texmaker texstudio telegram-desktop firefox-developer-edition geany gimp inkscape jre-openjdk jre-openjdk-headless lyx vim vim-runtime vlc blender pencil2d chromium code 

#nvm for bash use
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

#nvm for zsh use
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | zsh

#git configuration
cp git/.gitmessage.txt ~
git config --global user.name Glorious Elijah
git config --global user.email gloriouselijah125@gmail.com
git config --global commit.template ~/.gitmessage.txt
git config --global core.editor vim
