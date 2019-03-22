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

### Env

export FONTCONFIG_PATH=/etc/fonts
export ZSH=/home/pi/.oh-my-zsh
export http_proxy=
export BROWSER=/usr/bin/google-chrome-stable
export EDITOR=/usr/bin/vim
export TERM=xterm-color
export LANG=/usr/lib/locale/en_GB
export PATH="$PATH:/home/pi/berryconda3/bin"

###Setup

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh
~/dotfiles/MOTD.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
