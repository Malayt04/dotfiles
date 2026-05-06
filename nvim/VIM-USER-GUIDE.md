# Neovim Configuration Guide

Complete user guide for your PookieVim configuration.

## Table of Contents

1. [Basic Navigation](#basic-navigation)
2. [File Explorer](#file-explorer)
3. [Finding Files & Search](#finding-files--search)
4. [LSP & Code Navigation](#lsp--code-navigation)
5. [Debugging](#debugging)
6. [Git Integration](#git-integration)
7. [Terminal Management](#terminal-management)
8. [Window Management](#window-management)
9. [Text Editing](#text-editing)
10. [Markdown](#markdown)
11. [Keybindings Reference](#keybindings-reference)

---

## Basic Navigation

| Key | Action |
|-----|--------|
| `h/j/k/l` | Move left/down/up/right (same as arrow keys) |
| `w` | Jump to start of next word |
| `b` | Jump to start of previous word |
| `e` | Jump to end of next word |
| `0` | Jump to beginning of line |
| `$` | Jump to end of line |
| `gg` | Jump to first line of file |
| `G` | Jump to last line of file |
| `Ctrl+d` | Jump down half a page |
| `Ctrl+u` | Jump up half a page |
| `{number}G` | Jump to specific line number |

**Relative line numbers** are enabled - useful for understanding jumps.

---

## File Explorer

| Key | Action |
|-----|--------|
| `-` | Open file explorer (Oil.nvim) at current file's directory |

**Oil.nvim** is your file explorer. It opens in the current buffer showing the directory.

### Oil Keybindings

| Key | Action |
|-----|--------|
| `Enter` | Open file/directory |
| `-` | Go to parent directory |
| `s` | Open file in horizontal split |
| `v` | Open file in vertical split |
| `t` | Open file in new tab |
| `R` | Rename file/directory |
| `C` | Copy file/directory |
| `D` | Delete file/directory |
| `.` | Toggle hidden files |
| `q` | Close Oil |

---

## Finding Files & Search

### File Finding (FzfLua)

| Key | Action |
|-----|--------|
| `<leader><leader>` | Open file finder (fuzzy search) |
| `<leader>/` | Live grep (search in all files) |

### FzfLua Keybindings

**In file finder:**

| Key | Action |
|-----|--------|
| `Enter` | Open selected file |
| `Ctrl+v` | Open in vertical split |
| `Ctrl+x` | Open in horizontal split |
| `Ctrl+t` | Open in new tab |
| `Tab` | Multi-select toggle |
| `Ctrl+d` | Scroll preview down |
| `Ctrl+u` | Scroll preview up |
| `Esc` | Close finder |

**In live grep:**

| Key | Action |
|-----|--------|
| `Enter` | Go to match |
| `Shift+Enter` | Open in split |
| `Tab` | Multi-select toggle |

---

## LSP & Code Navigation

### Language Server Features

The config supports LSP for:
- Python (ruff, pyright)
- Go (gopls)
- Lua (lua_ls)
- Rust (rust_analyzer)
- TypeScript/JavaScript (tsserver)
- HTML/CSS
- PHP (intelephense)

### LSP Commands

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `K` | Hover over symbol (show info) |
| `<leader>d` | Show diagnostics |

**Automatic features:**
- Auto-format on save (where supported)
- Diagnostic display in gutter
- Code completion (blink.cmp)

### Completion (Blink.cmp)

| Key | Action |
|-----|--------|
| `Tab` / `Ctrl+Space` | Trigger completion |
| `Enter` | Accept suggestion |
| `Ctrl+n` / `Ctrl+p` | Navigate completion menu |
| `Esc` | Close completion |

### Treesitter (Syntax Highlighting)

Treesitter provides enhanced syntax highlighting. Check `:checkhealth treesitter` if highlighting seems off.

---

## Debugging

Debugging is configured for Python using DAP (Debug Adapter Protocol).

### Prerequisites

```bash
uv tool install debugpy@latest
```

### Debug Keybindings

| Key | Action |
|-----|--------|
| `<leader>b` | Toggle breakpoint |
| `<leader>dc` | Start debugging / Continue |
| `<leader>dl` | Run last debug session |
| `<leader>dq` | Stop debugging |
| `<leader>dr` | Open debug REPL |
| `<leader>ds` | Show scopes |
| `<leader>dh` | Hover over value |

### Debug Navigation

| Key | Action |
|-----|--------|
| `<Down>` | Step over |
| `<Right>` | Step into |
| `<Left>` | Step out |
| `<Up>` | Restart frame |

### Debug REPL Commands

Once in the REPL (`<leader>dr`):
- Evaluate expressions
- Print variable values
- Navigate call stack

---

## Git Integration

### Lazygit

| Key | Action |
|-----|--------|
| `<leader>g` | Open Lazygit |

Lazygit provides a TUI for Git operations including:
- View commits
- Stage/unstage changes
- Create branches
- Push/pull
- View diffs
- Stash changes
- And more...

### Codediff (Diff Viewer)

| Key | Action |
|-----|--------|
| Opens automatically | When viewing git diffs |

Codediff shows VSCode-style inline diffs.

---

## Terminal Management

### ToggleTerm

Manage multiple terminals in sidebars, splits, or floating windows.

| Key | Action |
|-----|--------|
| `<leader>tt` | Toggle default terminal |
| `<leader>tv` | **Vertical Sidebar Terminal** |
| `<leader>th` | Horizontal Split Terminal |
| `<leader>tf` | Floating Terminal |
| `Ctrl+\` | Toggle current terminal |

**Inside Terminal Mode:**
- `jk` or `Esc`: Enter Normal Mode
- `Ctrl+h/j/k/l`: Move focus to adjacent window (seamless transition)

---

## Window Management

### Window Navigation (Tmux Integrated)

Your window navigation is integrated with Tmux. You can move between Neovim splits and Tmux panes using the same keys.

| Key | Action |
|-----|--------|
| `Ctrl+h` | Move to left window / pane |
| `Ctrl+l` | Move to right window / pane |
| `Ctrl+j` | Move to lower window / pane |
| `Ctrl+k` | Move to upper window / pane |
| `Ctrl+w` then `q` | Close current window |
| `Ctrl+w` then `s` | Split horizontally |
| `Ctrl+w` then `v` | Split vertically |

### Window Splits

| Key | Action |
|-----|--------|
| `:split` or `Ctrl+w s` | Horizontal split |
| `:vsplit` or `Ctrl+w v` | Vertical split |
| `:new` | New buffer in horizontal split |

---

## Text Editing

### Selection

| Key | Action |
|-----|--------|
| `v` | Visual mode (select) |
| `V` | Visual line mode (select lines) |
| `Ctrl+v` | Visual block mode (rectangular) |

### Editing Commands

| Key | Action |
|-----|--------|
| `y` | Yank (copy) |
| `d` | Delete (cut) |
| `p` | Paste |
| `x` | Delete character |
| `u` | Undo |
| `Ctrl+r` | Redo |
| `.` | Repeat last command |
| `jj` | Quick escape from insert mode |

### In Visual Mode

| Key | Action |
|-----|--------|
| `d` or `x` | Delete selection |
| `y` | Yank selection |
| `c` | Change selection |
| `>` | Indent right |
| `<` | Indent left |
| `p` | Paste without yanking (preserves buffer) |
| `J` | Move selected lines down |
| `K` | Move selected lines up |

### Text Objects

| Key | Action |
|-----|--------|
| `iw` | Inner word |
| `aw` | A word |
| `i"` | Inner quote |
| `a"` | A quote |
| `i(` | Inner parens |
| `a(` | A parens |
| `ip` | Inner paragraph |
| `ap` | A paragraph |

---

## Markdown

### Rendering

Markdown files are rendered with `render-markdown.nvim` for live preview:
- Task lists
- Inline code
- Code blocks
- Tables
- And more...

---

## Keybindings Reference

### Leader Key

The leader key is `<space>` (spacebar).

### Quick Reference

| Binding | Action |
|---------|--------|
| `<leader><leader>` | Find files |
| `<leader>/` | Live grep |
| `<leader>d` | Show diagnostics |
| `<leader>g` | Open Lazygit |
| `<leader>b` | Debug toggle breakpoint |
| `<leader>dc` | Debug continue |
| `<leader>dl` | Debug run last |
| `<leader>dq` | Debug terminate |
| `<leader>dr` | Debug open REPL |
| `<leader>ds` | Debug scopes |
| `<leader>dh` | Debug hover |
| `-` | Open file explorer |
| `gd` | Go to definition |
| `Ctrl+h/j/k/l` | Navigate windows / Tmux panes |
| `<leader>tt` | Toggle terminal |
| `<leader>tv` | Sidebar terminal |
| `<leader>tf` | Floating terminal |
| `<Down>` | Debug step over |
| `<Right>` | Debug step into |
| `<Left>` | Debug step out |
| `<Up>` | Debug restart frame |

### New Keybindings (Custom)

We've added these custom keybindings for a smoother experience:

| Binding | Action |
|---------|--------|
| `jj` | Quick escape from insert mode |
| `n` / `N` | Search next/prev (centered) |
| `J` | Join lines (centered) |
| `<` / `>` | Re-indent after selecting |
| `K` | Move selected lines up (visual) |
| `J` | Move selected lines down (visual) |
| `p` | Paste without yanking (visual) |

### Movement Shortcuts

| Binding | Action |
|---------|--------|
| `nzzzv` | Next match centered |
| `Nzzzv` | Previous match centered |
| `mzJ`z | Join lines centered |

---

## Additional Tips

### Multiple Cursors

- `Ctrl+d` in visual mode: Add next match of current selection
- Works with visual block mode (`Ctrl+v`)

### Search and Replace

| Command | Action |
|---------|--------|
| `:%s/old/new/g` | Replace all occurrences |
| `:'<,'>s/old/new/g` | Replace in selection |
| `:s/old/new/g` | Replace in current line |

### Marks

| Command | Action |
|---------|--------|
| `m{a-z}` | Set local mark |
| `m{A-Z}` | Set global mark |
| `` `{mark} `` | Jump to mark |
| `:marks` | List all marks |

### Registers

| Command | Action |
|---------|--------|
| `"ay` | Yank to register a |
| `"ap` | Paste from register a |
| `:reg` | List all registers |

---

## Theme

The editor uses **Kanagawa Wave** colorscheme.

### Configuration Features

The config includes these performance optimizations:

| Feature | Setting |
|---------|---------|
| Swap files | Disabled (faster) |
| Undo history | Persistent (10,000 levels) |
| Auto-reload | Enabled (external changes detected) |

### Customization

To customize, edit the Kanagawa setup block in `init.lua`:

```lua
require('kanagawa').setup({
  colors = {
    theme = {
      all = {
        ui = {
          bg_gutter = "none"
        }
      }
    }
  }
})
```

---

## Plugin Dependencies

Some features require external tools:

| Tool | Purpose |
|------|---------|
| `tree-sitter-cli` | Syntax highlighting (brew install tree-sitter-cli) |
| `debugpy` | Python debugging (uv tool install debugpy@latest) |
| `ruff` | Python linting/formatting (uv tool install ruff@latest) |
| `pyright` | Python type checking (npm install -g pyright) |
| `gopls` | Go language server (go install golang.org/x/tools/gopls@latest) |
| `lua-language-server` | Lua LSP (brew install lua-language-server) |
| `lazygit` | Git TUI (auto-installed by lazygit.nvim or brew install lazygit) |

---

## Troubleshooting

### Check Health

```vim
:checkhealth
:checkhealth treesitter
:checkhealth lsp
```

### Reload Config

```vim
:source %   --Reload init.lua
```

### View Log

```vim
:lua vim.cmd('edit ' .. vim.fn.stdpath('log') .. '/nvim.log')
```

### Common Issues

**No syntax highlighting:**
```bash
# Install tree-sitter-cli
brew install tree-sitter-cli

# In neovim, rebuild parsers
:TSInstallSync <language>
```

**LSP not working:**
```bash
# Check installed LSP servers
:LspInfo

# Install required tools
uv tool install ruff@latest
go install golang.org/x/tools/gopls@latest
npm install -g pyright
```

**Debug not working:**
```bash
# Install debugpy
uv tool install debugpy@latest
```

---

## Further Resources

- [Neovim Docs](https://neovim.io/doc/)
- [FzfLua](https://github.com/ibhagwan/fzf-lua)
- [Oil.nvim](https://github.com/stevearc/oil.nvim)
- [Blink.cmp](https://github.com/saghen/blink.cmp)
- [nvim-dap](https://github.com/mfussenegger/nvim-dap)
- [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim)
- [Kanagawa](https://github.com/rebelot/kanagawa.nvim)