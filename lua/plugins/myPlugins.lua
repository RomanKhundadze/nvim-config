return {
    -- add gruvbox
    { "ellisonleao/gruvbox.nvim" },

    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "gruvbox",
        },
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "bash",
                "html",
                "java",
                "json",
                "lua",
                "markdown",
                "php",
                "python",
                "typescript",
                "vim",
                "css",
                "c",
                "c_sharp",
                "cpp",
            },
        },
    },

    {
        "neovim/nvim-lspconfig",
        opts = {
            autoformat = false,
            diagnostics = {
                underline = true,
                update_in_insert = true,
                virtual_text = { spacing = 4, prefix = "●" },

                severity_sort = true,
            },
        },
    },
}
