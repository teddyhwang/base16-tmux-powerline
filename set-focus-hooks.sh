#!/usr/bin/env bash
# Set client focus hooks to mute/restore status bar colors

# Focused (normal) status bar - restore original theme colors
tmux set-hook -g client-focus-in "\
  set -g status-style \"fg=colour21,bg=colour18\" ; \
  set -g status-left \"#[fg=colour18,bg=colour2,bold] #S #[fg=colour2,bg=colour19,nobold]#[fg=colour21,bg=colour19] #(whoami) #[fg=colour19,bg=colour20]#[fg=colour15,bg=colour20] #I:#P #[fg=colour20,bg=default,nobold] #{pane_current_command} #{simple_git_status}\" ; \
  set -g status-right \"#[fg=colour06]#(~/.config/tmux/plugins/base16-tmux-powerline/truncate_path.sh #{pane_current_path} 40) #[fg=colour20,bg=default]#[fg=colour15,bg=colour20] %H:%M:%S #[fg=colour19,bg=colour20]#[fg=colour21,bg=colour19] %d-%b-%y #[fg=colour06,bg=colour19]#[fg=colour18,bg=colour06,bold] #H \" ; \
  set -g window-status-current-format \" #[fg=colour18,bg=colour02] #I:#W#F \""

# Unfocused (muted) status bar - dim all colors to base18/19
tmux set-hook -g client-focus-out "\
  set -g status-style \"fg=colour19,bg=colour18\" ; \
  set -g status-left \"#[fg=colour18,bg=colour19,bold] #S #[fg=colour19,bg=colour18,nobold]#[fg=colour19,bg=colour18] #(whoami) #[fg=colour18,bg=colour18]#[fg=colour19,bg=colour18] #I:#P #[fg=colour18,bg=default,nobold] #{pane_current_command} #{simple_git_status}\" ; \
  set -g status-right \"#[fg=colour19]#(~/.config/tmux/plugins/base16-tmux-powerline/truncate_path.sh #{pane_current_path} 40) #[fg=colour18,bg=default]#[fg=colour19,bg=colour18] %H:%M:%S #[fg=colour18,bg=colour18]#[fg=colour19,bg=colour18] %d-%b-%y #[fg=colour18,bg=colour18]#[fg=colour18,bg=colour19,bold] #H \" ; \
  set -g window-status-current-format \" #[fg=colour18,bg=colour19] #I:#W#F \""
