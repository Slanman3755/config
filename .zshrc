export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(
    git
)
source $ZSH/oh-my-zsh.sh

# pyenv init
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# jenv init
eval "$(jenv init -)"

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
