-- Treesitter
vim.cmd('syntax off')
vim.cmd('packadd nvim-treesitter')

-- Force Lua to find the plugin (Fix for Neovim 0.12 package system)
local ts_path = vim.fn.stdpath("data") .. "/site/pack/core/opt/nvim-treesitter/lua/?.lua"
if not package.path:find(ts_path, 1, true) then
    package.path = package.path .. ";" .. ts_path
end

local status, configs = pcall(require, 'nvim-treesitter.configs')
if status then
	configs.setup({
		ensure_installed = { "php", "html", "css", "javascript", "typescript", "tsx", "go", "gomod", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "blade", "python", "rust" },
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
		indent = { enable = true },
	})
end

-- Enable Treesitter for PHP and other languages
vim.api.nvim_create_autocmd('FileType', {
	pattern = { 'php', 'blade', 'javascript', 'typescript', 'typescriptreact', 'javascriptreact', 'html', 'css', 'go', 'python', 'rust' },
	callback = function()
		pcall(vim.treesitter.start)
	end,
})