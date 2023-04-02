if status is-interactive
    # Commands to run in interactive sessions can go here
starship init fish | source

    #Aliases
alias themeset="~/.config/hypr/themeset.sh"
alias config="/usr/bin/git --git-dir=$HOME/Hyprland-config --work-tree=$HOME"

set -U fish_greeting ""
end
