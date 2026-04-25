-- Diagnostic config
vim.diagnostic.config({
	severity_sort = true,
	update_in_insert = false,
	float = { source = 'if_many' },
	jump = { float = true },
})

-- Highlight yank
vim.api.nvim_create_autocmd('TextYankPost', {
	group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
	callback = function() vim.highlight.on_yank() end,
})