-- LSP config (Neovim 0.11+ API)

-- 1. Enable standard servers
vim.lsp.enable({ 'ruff', 'lua_ls', 'pyright', 'ts_ls', 'gopls', 'html', 'cssls' })

-- 2. Configure Intelephense with WordPress stubs
vim.lsp.config('intelephense', {
	settings = {
		intelephense = {
			stubs = { 
				"wordpress", "phpunit", "bcmath", "bz2", "calendar", "Core", "curl", "date", "dom", "enchant", "fileinfo", "filter", "gd", "gettext", "hash", "iconv", "imap", "intl", "json", "ldap", "libxml", "mbstring", "mcrypt", "mysql", "mysqli", "password", "pcntl", "pcre", "PDO", "pdo_mysql", "Phar", "readline", "recode", "Reflection", "session", "SimpleXML", "soap", "sockets", "spl", "standard", "sysvmsg", "sysvsem", "sysvshm", "tidy", "tokenizer", "xml", "xmlreader", "xmlrpc", "xmlwriter", "xsl", "zip", "zlib" 
			},
			files = {
				maxSize = 5000000;
			};
		};
	},
})
vim.lsp.enable('intelephense')

-- 3. Auto-formatting and other features
vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('my.lsp', { clear = true }),
	callback = function(ev)
		local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
		if not client:supports_method('textDocument/willSaveWaitUntil')
		    and client:supports_method('textDocument/formatting') then
			vim.api.nvim_create_autocmd('BufWritePre', {
				group = vim.api.nvim_create_augroup('my.lsp.fmt', { clear = false }),
				buffer = ev.buf,
				callback = function()
					vim.lsp.buf.format({ bufnr = ev.buf, id = client.id, timeout_ms = 1000 })
				end,
			})
		end
	end,
})