mkdir ~/.vim
mkdir ~/.vim/colors
cp -r vim/color/tool ~/.vim/colors
cp vim/color/glo.vim ~/.vim/colors
cp vim/.vimrc ~/


sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
cp ohmyzsh/theme/glo.zsh-theme ~/.oh-my-zsh/themes
cp ohmyzsh/.zshrc ~/
cp .aliases .hashes ~/

sudo pacman -Syy arduino 1:1.8.13-2 arduino-builder 1.5.4-1 arduino-ctags 5.8_arduino11-4 atom 1.53.0-1 audacious 4.0.5-1 audacious-plugins 4.0.5-1 audacity 1:2.4.1-4 texinfo 6.7-3 texlive-bibtexextra 2020.55376-1 texlive-bin 2020.54586-6 texlive-core 2020.55416-1 texlive-fontsextra 2020.55407-1 texlive-formatsextra 2020.54498-1 texlive-games 2020.55271-1 texlive-humanities 2020.55389-1 texlive-latexextra 2020.55418-1 texlive-music 2020.54758-2 texlive-pictures 2020.55342-1 texlive-pstricks 2020.55289-1 texlive-publishers 2020.55415-1 texlive-science 2020.55390-1 texmaker 5.0.4-1 texstudio 3.0.1-2 telegram-desktop 2.4.11-0.1 firefox-developer-edition 84.0b1-1 geany 1.37-1 gimp 2.10.22-1 inkscape 1.0.1-2 jre-openjdk 14.0.2.u12-1 jre-openjdk-headless 14.0.2.u12-1 lyx 2.3.5.2-1 vim 8.2.1989-2 vim-runtime 8.2.1989-2 vlc 3.0.11.1-6 blender 17:2.90.1-2 pencil2d 0.6.5-1
