# COLORSCHEME: night owl

BG1="#011627"
BG2="#82aaff"
BG3="#112630"
FG1="#d6deeb"
FG2="#637777"

tmux set-option -g status "on"

tmux set -g status-left-length 80
tmux set -g status-right-length 150
#Session name
tmux set -g status-left "#[fg=#1F2335,bg=#6441a5,bold] #{?client_prefix,󰠠 ,#[dim]󰤂 }#[fg=#ffffff,bg=#6441a5,bold,nodim]#S $RESET"

# default statusbar colors
tmux set -g status-bg $BG3
tmux set -g status-fg $FG1

# default window title colors
tmux set-window-option -g window-status-style bg=$BG1,fg=$BG3
tmux set-window-option -g window-status-activity-style bg=$BG2,fg=colour248

# active window title colors
tmux set-window-option -g window-status-current-style fg=$BG1,bg=$BG2

# pane border
tmux set-option -g pane-active-border-style fg=$FG2
tmux set-option -g pane-border-style fg=$FG2

# message infos
tmux set-option -g message-style bg=$BG1,fg=$BG2

# commands
tmux set-option -g message-command-style bg=$BG1,fg=$FG1

# pane number display
tmux set-option -g display-panes-active-colour colour250 #fg2
tmux set-option -g display-panes-colour colour237 #bg1

# clock
tmux set-window-option -g clock-mode-colour colour24 #blue

# bell
tmux set-window-option -g window-status-bell-style fg=colour229,bg=colour88 #bg, red

tmux set-option -g status-justify "left"
tmux set-option -g status-left-length "80"
tmux set-option -g status-right-length "80"
tmux set-window-option -g window-status-separator ""

tmux set-option -g status-left ""
tmux set-option -g status-right "#[fg=$FG1,bg=$BG3] %Y-%m-%d %H:%M #[fg=$BG1, bg=$BG2] #h "

tmux set-window-option -g window-status-current-format "#[fg=$BG1, bg=$BG2] #I:#[fg=$BG1, bg=$BG2, bold] #W "
tmux set-window-option -g window-status-format "#[fg=$FG1,bg=$BG3] #I: #W "
