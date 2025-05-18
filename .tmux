# Enable mouse support
set -g mouse on

# Increase history limit
set -g history-limit 4000

# Use vi keys in copy mode
setw -g mode-keys vi

# Fix selection in copy mode
bind -T copy-mode-vi Space send -X begin-selection
bind -T copy-mode-vi Enter send -X copy-selection
