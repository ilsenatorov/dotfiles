POWERLEVEL9K_MODE='awesome-fontconfig'
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(anaconda dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time status root_indicator background_jobs time)
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=3


plugins=(
  fzf
  git
  autopep8
  sudo
  colored-man-pages
  pip
  zsh-z
)

### Aliases

alias ranger='ranger -r ~/dotfiles/ranger'
alias r='ranger -r ~/dotfiles/ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias wal='wal -o /home/ilya/dotfiles/colorchange.sh'


### Env

export FONTCONFIG_PATH=/etc/fonts
export ZSH=/home/ilya/.oh-my-zsh
export EDITOR=/usr/bin/vim
export LANG=/usr/lib/locale/en_GB
export LC_ALL=en_GB.UTF-8
export TERM=xterm-256color

###Setup

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#(cat ~/.cache/wal/sequences &)


# miRNA #
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH=$PATH:/home/ilya/bin
PERL_MB_OPT="--install_base /home/ilya/perl5";export PERL_MB_OPT
PERL_MM_OPT="INSTALL_BASE=/home/ilya/perl5";export PERL_MM_OPT
export PERL5LIB=/home/ilya/Projects/miRNA/mirdeep2/lib/perl5


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ilya/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ilya/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ilya/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="$PATH:/home/ilya/miniconda3/bin"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
