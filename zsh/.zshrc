
# Themes
# ZSH_THEME="amuse"
ZSH_THEME="agnoster"


# Plugins
plugins=( git zsh-autosuggestions zsh-syntax-highlighting )
plugins+=(zsh-nvm)
# plugins+=(vi-mode)

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Remove prompt data
prompt_context() {}
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=3'
source ~/.config/zsh/my_custom_commands.sh
export PATH="/usr/local/sbin:$PATH"

export PATH=/usr/local/share/npm/bin:$PATH
export PATH=~/.npm-global/bin:$PATH
export PATH=~/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Enable vi mode
# bindkey -v
