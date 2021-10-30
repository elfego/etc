
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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/vvmv9/.anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/vvmv9/.anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/vvmv9/.anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/vvmv9/.anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH=$PATH:$HOME/.bin
