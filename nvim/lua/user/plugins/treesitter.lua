-- Treesitter
vim.cmd('syntax off')
vim.cmd('packadd nvim-treesitter')

local status, configs = pcall(require, 'nvim-treesitter.configs')
if status then
	configs.setup({
		ensure_installed = { "php", "html", "css", "javascript", "typescript", "tsx", "go", "gomod", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "blade" },
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
		indent = { enable = true },
	})
end

-- Enable Treesitter for PHP and other languages
vim.api.nvim_create_autocmd('FileType', {
	pattern = { 'php', 'blade' },
	callback = function()
		pcall(vim.treesitter.start)
	end,
})