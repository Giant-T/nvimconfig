return {
    "neovim/nvim-lspconfig",
    event = "BufReadPre",
    dependencies = {
        -- Autocompletion
        { "hrsh7th/nvim-cmp" },
    },
    config = function(_, _)
        vim.lsp.config.clangd = {
            cmd = {
                'clangd',
            },
        }
        vim.lsp.enable({ "clangd", "rust_analyzer", "nixd", "tinymist", "lua_ls" })
    end,
}
