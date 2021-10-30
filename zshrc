
## antigen settings to load
source /usr/share/zsh/share/antigen.zsh 

antigen use oh-my-zsh

# plugins from oh-my-zsh
antigen bundle git
antigen bundle command-not-found
antigen bundle common-aliases
antigen bundle fasd


# external plugins
antigen bundle desyncr/auto-ls
#antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme
antigen theme robbyrussell

# apply config
antigen apply

# personal configs
alias poweroff="emacsclient -e '(kill-emacs)'; poweroff"
alias reboot="emacsclient -e '(kill-emacs)'; reboot"
alias pacman="sudo pacman"
alias semacs="sudo emacs -nw"
alias nemacs="emacsclient -t"
alias    lsd="ls -aho"
alias     dh="du -s -h"
alias   pacu="pikaur -Syu; conda update --all"
alias   pacs="pikaur -Ss"

#function   cd {
    #builtin cd "$@" && ls -F
#}
#function take {
    #mkdir -p "$@" && builtin cd "$@"
#}

source $HOME/.etc/conda_init.sh

export PATH=$PATH:$HOME/.bin
