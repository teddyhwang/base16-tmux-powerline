# base16-tmux-powerline
A [powerline](https://github.com/powerline/powerline) inspired tmux theme based on [tmux-themepack](https://github.com/jimeh/tmux-themepack). Designed to be compatibile with [base16](https://github.com/chriskempson/base16).

## Installation

### Install manually

1. Clone repo to local machine:

        git clone https://github.com/teddyhwang/base16-tmux-powerline.git ~/.tmux-themepack

2. Source desired theme in your `~/.tmux.conf`:

        source-file "${HOME}/.tmux-themepack/base16-powerline.themepack"

    In some linux distributions you might have to remove the quotation marks from the
    `source-file` command to avoid a `no such file or directory` error:

### Install using [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

1. Add plugin to the list of TPM plugins in `.tmux.conf`:

        set -g @plugin 'teddyhwang/base16-tmux-powerline'

2. Hit `prefix + I` to fetch the plugin and source it. The plugin should now be working.

## Example Theme Variations with base16-vim and base16-shell

### base16_harmonic-dark

### base16_gruvbox-dark-hard

### base16_solarized-light
