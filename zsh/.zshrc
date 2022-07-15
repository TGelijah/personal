source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle sobolevn/wakatime-zsh-plugin
antigen bundle pip
antigen bundle sudo
antigen bundle z
antigen bundle thefuck
antigen bundle systemd
antigen bundle python
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme glo

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Load alias and hash file if they exis
 if [ -f ~/.aliases ]; then
    . ~/.aliases
 fi

 #directory hash
 if [ -f ~/.hashes ]; then
    . ~/.hashes
 fi

# Load environment variables
 export PATH=~/bin:$PATH
 export PATH=~/.local/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  #This loads nvm bash_completion

# Tell Antigen that you're done.
antigen apply
