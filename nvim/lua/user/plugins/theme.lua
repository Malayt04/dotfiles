require("catppuccin").setup({
    flavour = "mocha",
    transparent_background = true,
    integrations = {
        treesitter = true,
        native_lsp = {
            enabled = true,
        },
        gitsigns = true,
        alpha = true,
        blink_cmp = true,
    },
})

vim.cmd.colorscheme("catppuccin")