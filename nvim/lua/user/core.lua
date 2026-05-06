-- General settings
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Performance
vim.o.updatetime = 300
vim.o.timeout = true
vim.o.timeoutlen = 300
vim.o.redrawtime = 1500
vim.o.ttimeoutlen = 10

-- Lazy redraw (faster macros/commands)
vim.o.lazyredraw = false

-- Disable swap files (faster, no prompts)
vim.o.swapfile = false
vim.o.writebackup = false
vim.o.backup = false

-- Persistent undo
vim.o.undofile = true
vim.o.undolevels = 10000

-- Hidden buffers (keep in background)
vim.o.hidden = true

-- Faster search
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

-- Sync vim and system clipboards
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

-- Raise dialog if you close unsaved buffer
vim.o.confirm = true

-- Snappy escape
vim.o.ttimeoutlen = 1

-- Auto-reload files when changed externally
vim.o.autoread = true

vim.api.nvim_create_autocmd({ 'FocusGained', 'CursorHold', 'BufEnter' }, {
	command = 'checktime',
})

-- Indentation (4 spaces)
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Sign column for LSP
vim.o.signcolumn = 'yes'

-- Cursor (smooth cursor)
vim.o.guicursor = 'a:block-blinkon0'

-- Faster complete
vim.o.pumheight = 10
vim.o.wildmode = 'longest:full,full'
vim.o.wildmenu = true

-- Better mouse
vim.o.mouse = 'a'

-- Better wrapping
vim.o.wrap = false
vim.o.linebreak = false
vim.o.scrolloff = 8

-- Visual improvements
vim.o.showmatch = true
vim.o.matchtime = 2

-- Disable vertical split difference
vim.o.diffopt = 'internal'