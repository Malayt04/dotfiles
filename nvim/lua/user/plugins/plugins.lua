-- Plugin list
-- Pack guide: https://echasnovski.com/blog/2026-03-13-a-guide-to-vim-pack#update
vim.pack.add({
	'https://github.com/ibhagwan/fzf-lua',
	'https://github.com/nvim-treesitter/nvim-treesitter', -- also $ brew install tree-sitter-cli
	'https://github.com/neovim/nvim-lspconfig',
	'https://github.com/karb94/neoscroll.nvim',
	'https://github.com/mfussenegger/nvim-dap',
	'https://github.com/stevearc/oil.nvim',
	'https://github.com/kdheepak/lazygit.nvim',
	'https://github.com/esmuellert/codediff.nvim',
	'https://github.com/goolord/alpha-nvim',
	'https://github.com/rebelot/kanagawa.nvim',
	'https://github.com/MeanderingProgrammer/render-markdown.nvim',
	'https://github.com/supermaven-inc/supermaven-nvim',
	'https://github.com/catppuccin/nvim',
	'https://github.com/akinsho/toggleterm.nvim',
	'https://github.com/christoomey/vim-tmux-navigator',
	'https://github.com/windwp/nvim-autopairs',
	'https://github.com/rafamadriz/friendly-snippets',
	'https://github.com/nvim-tree/nvim-tree.lua',
	'https://github.com/nvim-tree/nvim-web-devicons',
	{ src = 'https://github.com/saghen/blink.cmp', version = vim.version.range('1.x') },
})