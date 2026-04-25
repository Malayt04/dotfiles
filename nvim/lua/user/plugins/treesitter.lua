-- Treesitter
vim.cmd('syntax off')

-- Enable Treesitter for PHP and other languages
vim.api.nvim_create_autocmd('FileType', {
	pattern = { 'php', 'blade' },
	callback = function()
		pcall(vim.treesitter.start)
	end,
})