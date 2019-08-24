ZSH_THEME="mod_agnoster"

plugins=(
  git
  autopep8
  command-not-found
  npm
  sudo
)

### Aliases

alias ranger='ranger -r ~/dotfiles/ranger'
alias r='ranger -r ~/dotfiles/ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias themes='cd /run/media/ilya/SD/Pictures/wallpapers; ls'
alias wal='wal -o /home/ilya/dotfiles/colorchange.sh'
alias card='cd /mnt/SD'

### Env

export FONTCONFIG_PATH=/etc/fonts
export ZSH=/home/ilya/.oh-my-zsh
export BACKUPLOG=~/dotfiles/backup/shortlog.txt
export http_proxy=
export LANG=en_GB.UTF-8
export BROWSER=/usr/bin/firefox
export EDITOR=/usr/bin/vim
export LC_ALL=en_GB.UTF-8


###Setup

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
(cat ~/.cache/wal/sequences &)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/mnt/SD/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/mnt/SD/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/mnt/SD/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="$PATH:/mnt/SD/miniconda3/bin"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
# export PATH="/mnt/SD/miniconda3/bin:$PATH"  # commented out by conda initialize
