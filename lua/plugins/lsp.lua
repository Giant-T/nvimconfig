return {
    "neovim/nvim-lspconfig",
    event = "BufReadPre",
    dependencies = {
        -- LSP Support
        { "williamboman/mason.nvim" },
        { "williamboman/mason-lspconfig.nvim" },

        -- Autocompletion
        { "hrsh7th/nvim-cmp" },
    },
    config = function(_, _)
        vim.lsp.enable({"clangd", "rust_analyzer", "lua_ls"})

        require('mason').setup({})
        require('mason-lspconfig').setup({
            ensure_installed = {
                "lua_ls",
            },
        })
    end,
}
