# Install Oh MY ZSH
export ZSH="/Users/lucaguglielmi/.oh-my-zsh"

# Themes
ZSH_THEME="agnoster"

# Plugins
plugins=( git osx zsh-autosuggestions zsh-syntax-highlighting )
plugins+=(zsh-nvm)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Remove prompt data
prompt_context() {}
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'
source ~/.config/zsh/my_custom_commands.sh
export PATH="/usr/local/sbin:$PATH"

export PATH=/usr/local/share/npm/bin:$PATH
export PATH=~/.npm-global/bin:$PATH
