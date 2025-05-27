# Enable mouse support
set -g mouse on

# Increase history limit
set -g history-limit 4000

# Use vi keys in copy mode
setw -g mode-keys vi

# Fix selection in copy mode
bind -T copy-mode-vi Space send -X begin-selection
bind -T copy-mode-vi Enter send -X copy-selection

# Bind 'y' in copy mode to copy to macOS clipboard
bind-key -T copy-mode-vi y send -X copy-pipe-and-cancel "pbcopy"

set-option -g default-terminal "xterm-256color"
