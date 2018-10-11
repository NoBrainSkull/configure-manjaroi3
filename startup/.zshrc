# Path to your oh-my-zsh installation.
  export ZSH=/home/blue/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"

CASE_SENSITIVE="true"


plugins=(
  git
  ssh-agent
  colorize
  sudo
)

source $ZSH/powerlevel9k.sh
source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_GB.UTF-8
export LANGUAGE=en_GB.UTF-8
export LC_ALL=en_GB.UTF-8

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/blue/sources/x/core/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/blue/sources/x/core/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/blue/sources/x/core/node_modules/tabtab/.completions/sls.zsh ]] && . /home/blue/sources/x/core/node_modules/tabtab/.completions/sls.zsh


# better yaourt colors
export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"

# node version manager support
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion