return {
    "neovim/nvim-lspconfig",
    event = "BufReadPre",
    config = function(_, _)
        vim.lsp.config.clangd = {
            cmd = {
                'clangd',
            },
        }

        vim.lsp.enable({ "cssls", "clangd", "ts_ls", "eslint", "omnisharp", "rust_analyzer", "nixd", "tinymist", "lua_ls" })
    end,
}
