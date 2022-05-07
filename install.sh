echo "*********************************************************************************************"
echo "* **                                                                                     ** *"
echo "*    **                                                                               **    *"
echo "*       **                                                                         **       *"
echo "*          **                                                                   **          *"
echo "*             **                                                             **             *"
echo "*                **     WELCOME TO THE ARCH LINUX FRESH INSTALL FILE      **                *"
echo "*                ** YOUR EVERYDAY PROGRAMS CONFIGURED AND READY FOR USE   **                *"
echo "*             **                                                             **             *"
echo "*          **                                                                   **          *"
echo "*       **                                                                         **       *"
echo "*    **                                                                               **    *"
echo "* **                                                                                     ** *"
echo "*********************************************************************************************"
echo ''
echo ''
echo '*************************************************************************************'
echo '*************************************************************************************'
echo '***                                                                               ***'
echo '***           You are about to sign in as root to do 2 things:                    ***'
echo '***           1. Enter visudo and enable the wheel group                          ***'
echo '***           2. Append home user created to wheel group using this commandI      ***'
echo '***           usermod -aG wheel yourusername                                      ***'
echo '***           When you finish press CTRL-D to exit root shell to home user shell  ***'
echo '***                                                                               ***'
echo '*************************************************************************************'
echo '*************************************************************************************'
echo
echo
echo '*************************************************************************************'
echo '                             Entering root shell...                                  '
echo '*************************************************************************************'
echo
su
echo
echo '*************************************************************************************'
echo '                            You have exited root access'
echo '*************************************************************************************'
echo
echo
echo '*************************************************************************************'
echo '*************************************************************************************'
echo '***                                                                               ***'
echo '***      IDEs, Browsers, Windows compatitble archiver and unarchiver, telegram    ***'
echo '***      media players, aur helper, etc. are about to be installed.               ***'
echo '***                                                                               ***'
echo '*************************************************************************************'
echo '*************************************************************************************'
echo
sudo pacman -Syu openvpn unrar unzip zip calibre atom audacious telegram-desktop firefox-developer-edition geany gimp jre-openjdk vim vlc pencil2d chromium code thunderbird simplescreenrecorder obs-studio libreoffice cantata yay 
echo
echo '*************************************************************************************'
echo '                                   Intall Completed                                  '
echo "                          Next Phase (Vim configuration)  Loading...               "
echo '*************************************************************************************'
echo
echo
echo '*************************************************************************************'
echo '*************************************************************************************'
echo '***                                                                               ***'
echo '***                           Adding Custom Vim Config Files                      ***'
echo '***                                                                               ***'
echo '*************************************************************************************'
echo '*************************************************************************************'
echo
cp -rf vim/color/tools ~/.vim/colors
cp vim/color/glo.vim ~/.vim/colors
cp vim/.vimrc ~/
echo
echo '*************************************************************************************'
echo '                           Vim Configuration Completed                               '
echo
echo "         There is a chance that vim won\'t be able to access the config files        "
echo '          from your home directory if that is the case                               '
echo '          Manually move the config files to the /usr/share/vim folder                '
echo '                                                                                     '
echo '                                                                                     '
echo "             Next Phase (ohmyzsh and Terminal configuration) Loading...              "
echo '*************************************************************************************'
echo
echo
echo '*************************************************************************************'
echo '*************************************************************************************'
echo '***                                                                               ***'
echo "***        Retrieving Ohmyzsh Files for Install & Shell Configuration             ***"
echo '***                                                                               ***'
echo '*************************************************************************************'
echo '*************************************************************************************'
echo
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
cp ohmyzsh/theme/glo.zsh-theme ~/.oh-my-zsh/themes
cp ohmyzsh/.zshrc ~
cp terminal/.aliases  ~
echo
echo
echo "Recompiling Shell Resource Files"
echo
source ~/.bashrc && source ~/.zshrc
echo
echo 'Recompiled Resource Files'
echo
echo '*************************************************************************************'
echo '                 Ohmyzsh Retrieval and Terminal Configuration Completed            '
echo "                  Next Phase (Node version Manager and Git) Loading...             "
echo '*************************************************************************************'
echo
echo
echo '*************************************************************************************'
echo '*************************************************************************************'
echo '***                                                                               ***'
echo '***    Retrieving and configuring node version manager for both bash and zsh      ***'
echo "***                    & Configuring git version control                         ***"
echo '***                                                                               ***'
echo '*************************************************************************************'
echo '*************************************************************************************'
echo
#nvm for bash use
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
echo
echo
#nvm for zsh use
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | zsh
echo
echo
#git configuration
cp git/.gitmessage.txt ~
git config --global user.name Glorious Elijah
git config --global user.email gloriouselijah125@gmail.com
git config --global commit.template ~/.gitmessage.txt
git config --global core.editor vim
echo
echo '*************************************************************************************'
echo "                     Node Version Manager & Git configuration Done                 "
echo
echo "                    Next Phase (Additional Installationi) Loading...               "
echo '*************************************************************************************'
echo
echo
echo '*************************************************************************************'
echo '*************************************************************************************'
echo '***                                                                               ***'
echo '***        You are about to install  Spotify, brave, bottles, chrome              ***'
echo '***                        and onlyoffice with yay                                ***'
echo '***        Make sure to enable multilib in your pacman.conf to allow              ***'
echo '***                32-bit library dependecies to install bottles                  ***'
echo '***                                                                               ***'
echo '*************************************************************************************'
echo '*************************************************************************************'
echo
echo
echo '*************************************************************************************'
echo '   Entering Vim runtime environment to edit pacman.conf as sudo uncomment Multilib   '
echo '*************************************************************************************'
echo
sudo vim /etc/pacman.conf
echo
echo '*************************************************************************************'
echo '                            Exited vim runtime                                       '
echo '*************************************************************************************'
echo
echo
echo '*************************************************************************************'
echo '                            Installing OnlyOffice                                    '
echo '*************************************************************************************'
echo
yay onlyoffice
echo
echo '*************************************************************************************'
echo '                            OnlyOffice Installed                                     '
echo '*************************************************************************************'
echo
echo
echo '*************************************************************************************'
echo '                            Installing Bottles...                                    '
echo '*************************************************************************************'
echo
yay bottles
echo
echo '*************************************************************************************'
echo '                            Bottles Installed                                        '
echo '*************************************************************************************'
echo
echo
echo '*************************************************************************************'
echo '                            Installing Spotify                                       '
echo '*************************************************************************************'
echo
yay spotify
echo
echo '*************************************************************************************'
echo '                            Spotify Installed                                        '
echo '*************************************************************************************'
echo
echo
echo '*************************************************************************************'
echo '                            Installing Chrome                                        '
echo '*************************************************************************************'
echo
yay chrome
echo
echo '*************************************************************************************'
echo '                            Chrome Installed                                         '
echo '*************************************************************************************'
echo
echo
echo '*************************************************************************************'
echo '                            Installing Brave                                         '
echo '*************************************************************************************'
echo
yay brave
echo
echo '*************************************************************************************'
echo '                            Brave Installed                                          '
echo '*************************************************************************************'
