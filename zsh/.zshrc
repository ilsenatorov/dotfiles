ZSH_THEME="my_theme"

plugins=(
  git
  autopep8
  command-not-found
  npm
  sudo
)

### Aliases

alias pi="ssh pi@192.168.0.20"
alias whatsbackup="~/dotfiles/backup/checklog.py"
alias cirrus="ssh ilsenato@login.cirrus.ac.uk"
alias weather="curl wttr.in"
alias uni="cd /home/ilya/Documents/uni_year3/"
alias ranger='ranger -r ~/dotfiles/ranger'
alias r='ranger -r ~/dotfiles/ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias themes='cd ~/Pictures/wallpapers; ls'
alias wal='wal -o /home/ilya/dotfiles/colorchange.sh'
alias jup='jupyter notebook --NotebookApp.iopub_data_rate_limit=10000000'
### Env

export FONTCONFIG_PATH=/etc/fonts
export ZSH=/home/ilya/.oh-my-zsh
export BACKUPLOG=~/dotfiles/backup/shortlog.txt
export http_proxy=
export LANG=en_US.UTF-8
export BROWSER=/usr/bin/google-chrome-stable
export EDITOR=/usr/bin/vim

###Setup

source $ZSH/oh-my-zsh.sh
xrdb ~/.Xresources
date +"%A %D %T"
echo "sup"
(cat ~/.cache/wal/sequences &)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
. /home/ilya/miniconda3/etc/profile.d/conda.sh

PATH="/home/ilya/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/ilya/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/ilya/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/ilya/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/ilya/perl5"; export PERL_MM_OPT;
