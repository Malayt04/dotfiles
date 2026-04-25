# Tmux Configuration

Efficient terminal multiplexing with seamless Neovim integration.

## Features
- **Prefix Key**: `Ctrl-a` (more ergonomic than the default `Ctrl-b`)
- **Mouse Support**: Enabled for scrolling and pane resizing
- **Color Support**: 256-color support with true color (Tc) overrides
- **Theme**: Catppuccin theme for a clean, modern look
- **Powerline**: Status bar enhancements with `tmux-powerline`
- **Neovim Integration**: Seamlessly switch between tmux panes and nvim splits using `Ctrl + h/j/k/l`

## Keybindings

The prefix key is `Ctrl-a`.

| Key | Action |
|-----|--------|
| `Prefix + I` | Install plugins (via TPM) |
| `Prefix + r` | Reload tmux configuration |
| `Prefix + %` | Split pane vertically |
| `Prefix + "` | Split pane horizontally |
| `Ctrl + h/j/k/l` | **Seamlessly move** between tmux panes and Neovim splits |
| `Prefix + z` | Zoom current pane |
| `Prefix + x` | Kill current pane |

## Plugins
- `tmux-plugins/tpm`: Tmux Plugin Manager
- `catppuccin/tmux`: Elegant theme
- `tmux-plugins/tmux-powerline`: Status bar enhancement
- `christoomey/vim-tmux-navigator`: Seamless nvim/tmux switching

## Installation
If you haven't already, install [TPM](https://github.com/tmux-plugins/tpm):
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
Then press `Prefix + I` while inside tmux to install the configured plugins.
