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

        local border = {
            "⁕",
            "─",
            "⁕",
            "│",
            "⁕",
            "─",
            "⁕",
            "│",
        }

        function on_attach(_, bufnr)
            local opts = { buffer = bufnr, remap = false }

            vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
                vim.lsp.handlers.hover,
                {
                    border = border,
                }
            )
            vim.lsp.handlers["textDocument/signature_help"] = vim.lsp.with(
                vim.lsp.handlers.signature_help,
                {
                    border = border,
                }
            )

            keymap.set("n", "gd", vim.lsp.buf.definition, opts)
            keymap.set("n", "K", vim.lsp.buf.hover, opts)
            keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
            keymap.set("n", "<leader>va", vim.lsp.buf.code_action, opts)
            keymap.set("n", "<leader>vr", require("telescope.builtin").lsp_references, opts)
            keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
            keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
            keymap.set("n", "<C-F>", "<cmd>LspZeroFormat<CR>")
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
