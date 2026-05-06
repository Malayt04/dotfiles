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

-- Autosave on BufLeave (switching buffers/windows)
vim.api.nvim_create_autocmd('BufLeave', {
	group = vim.api.nvim_create_augroup('autosave', { clear = true }),
	callback = function()
		if vim.bo.modified and vim.fn.empty(vim.fn.expand('%')) == 0 then
			vim.cmd('update')
		end
	end,
})

-- Autosave on VimLeavePre (closing nvim)
vim.api.nvim_create_autocmd('VimLeavePre', {
	group = vim.api.nvim_create_augroup('autosave_exit', { clear = true }),
	callback = function()
		vim.cmd('wa')
	end,
})