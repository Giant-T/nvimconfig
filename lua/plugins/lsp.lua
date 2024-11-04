local M = {
    "VonHeikemen/lsp-zero.nvim",
    event = "BufReadPre",
    dependencies = {
        -- LSP Support
        { "neovim/nvim-lspconfig" },
        { "williamboman/mason.nvim" },
        { "williamboman/mason-lspconfig.nvim" },

        -- Autocompletion
        { "hrsh7th/nvim-cmp" },
    },
    config = function(_, _)
        local keymap = vim.keymap
        local lsp = require("lsp-zero")

        function on_attach(_, bufnr)
            lsp.default_keymaps({buffer = bufnr})
        end

        lsp.extend_lspconfig({
            capabilities = require('cmp_nvim_lsp').default_capabilities(),
            lsp_attach = on_attach,
        })

        require('mason').setup({})
        require('mason-lspconfig').setup({
            ensure_installed = {
                "rust_analyzer",
            },
            handlers = {
                lsp.default_setup,
            },
        })
    end,
}

return M
