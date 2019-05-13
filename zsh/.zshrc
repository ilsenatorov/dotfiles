ZSH_THEME="mod_agnoster"

plugins=(
  fzf
  git
  autopep8
  sudo
  colored-man-pages
  pip
)

### Aliases

alias ranger='ranger -r ~/dotfiles/ranger'
alias r='ranger -r ~/dotfiles/ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias wal='wal -o /home/ilya/dotfiles/colorchange.sh'


### Env

export FONTCONFIG_PATH=/etc/fonts
export ZSH=/home/ilya/.oh-my-zsh
export BROWSER=/usr/bin/firefox
export EDITOR=/usr/bin/vim
export LANG=/usr/lib/locale/en_GB
export LC_ALL=en_GB.UTF-8



###Setup

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#(cat ~/.cache/wal/sequences &)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
