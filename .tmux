unbind C-b
set -g prefix C-a

# force a reload of the config file
unbind r
bind r source-file ~/.tmux.conf

# start window numbering at 1 for easier switching
set -g base-index 1

# colors
set -g default-terminal "screen-256color"

# unicode
setw -g utf8 on
set -g status-utf8 on

# status bar config
set -g status-left "#h:[#S]"
set -g status-left-length 50
set -g status-right-length 50
set -g status-right "⚡ #(~/bin/tmux-battery) [✉#(~/bin/imap_check.py)] %H:%M %d-%h-%Y"
setw -g window-status-current-format "|#I:#W|"
set-window-option -g automatic-rename off

set-window-option -g mode-keys vi
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R