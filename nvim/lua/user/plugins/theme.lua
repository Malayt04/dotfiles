-- Theme config
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

require("catppuccin").setup({
    flavour = "mocha",
    transparent_background = true,
    integrations = {
        treesitter = true,
        native_lsp = {
            enabled = true,
        },
        gitsigns = true,
        telescope = true,
    },
})

vim.cmd.colorscheme("catppuccin")