# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish
set -gx EDITOR nvim
set theme_color_scheme gruvbox
set PATH /home/linuxbrew/.linuxbrew/bin/ $PATH
set PATH /home/lg/julia-1.5.3/bin/ $PATH
#set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; test -f /home/lg/.ghcup/env ; and set -gx PATH $HOME/.cabal/bin /home/lg/.ghcup/bin $PATH # ghcup-env
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/lg/.ghcup/bin $PATH # ghcup-env
