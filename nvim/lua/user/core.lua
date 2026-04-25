-- General settings
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Relative line numbers
vim.o.relativenumber = true
vim.o.number = true

-- Case-insensitive searching unless we use capital letters
vim.o.ignorecase = true
vim.o.smartcase = true

-- Sync vim and system clipboards
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

-- Raise dialog if you close unsaved buffer
vim.o.confirm = true

-- Snappy escape
vim.o.ttimeoutlen = 1

-- Sign column for LSP
vim.o.signcolumn = 'yes'