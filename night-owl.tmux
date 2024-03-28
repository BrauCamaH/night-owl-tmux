BG1="#011627"
BG2="#82aaff"
BG3="#112630"
FG1="#d6deeb"
FG2="#637777"

RESET="#[fg=brightwhite,bg=#15161e,nobold,noitalics,nounderscore,nodim]"
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

tmux set -g status-left-length 80
tmux set -g status-right-length 150

# Highlight colors
tmux set -g mode-style "fg=#a9b1d6,bg=#2A2F41"
tmux set -g message-style "bg=#7aa2f7,fg=#2A2F41"
tmux set -g message-command-style "fg=#c0caf5,bg=#2A2F41"

tmux set -g pane-border-style "fg=#2A2F41"
tmux set -g pane-active-border-style "fg=#7aa2f7"

tmux set -g status-style bg="#1A1B26"

SCRIPTS_PATH="$CURRENT_DIR/src"

default_window_id_style="digital"
default_pane_id_style="hsquare"
default_zoom_id_style="dsquare"

# Session name
tmux set -g status-left "#[fg=#1F2335,bg=#6441a5,bold] #{?client_prefix,󰠠 ,#[dim]󰤂 }#[fg=FG2,bg=#6441a5,bold,nodim]#S $RESET"

#+--- Windows ---+
# Focus
tmux set-window-option -g window-status-current-format "#[fg=$BG1, bg=$BG2] #I:#[fg=$BG1, bg=$BG2, bold] #W "

# Unfocused
tmux set-window-option -g window-status-format "#[fg=$FG1,bg=$BG3] #I: #W "

#+--- Bars RIGHT ---+
tmux set-option -g status-right "#[fg=$FG1,bg=$BG3] %Y-%m-%d %H:%M #[fg=$BG1, bg=$BG2] #h "
tmux set -g window-status-separator ""
