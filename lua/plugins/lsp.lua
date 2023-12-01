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

        lsp.preset("recommended")

        local cmp = require("cmp")
        local cmp_select = { behavior = cmp.SelectBehavior.Select }
        local cmp_mappings = lsp.defaults.cmp_mappings({
            ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
            ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
            ["<CR>"] = cmp.mapping.complete(),
        })

        lsp.set_preferences({
            sign_icons = {},
        })

        cmp.setup({
            mapping = cmp_mappings,
        })

        function on_attach(client, bufnr)
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

            keymap.set("n", "gd", function()
                vim.lsp.buf.definition()
            end, opts)
            keymap.set("n", "K", function()
                vim.lsp.buf.hover()
            end, opts)
            keymap.set("n", "<leader>vd", function()
                vim.diagnostic.open_float()
            end, opts)
            keymap.set("n", "<leader>va", function()
                vim.lsp.buf.code_action()
            end, opts)
            keymap.set("n", "<leader>vr", function()
                vim.lsp.buf.references()
            end, opts)
            keymap.set("i", "<C-h>", function()
                vim.lsp.buf.signature_help()
            end, opts)
            keymap.set("n", "<C-F>", "<cmd>LspZeroFormat<CR>")
        end

        lsp.on_attach(on_attach)

        require('mason').setup({})
        require('mason-lspconfig').setup({
          ensure_installed = {
                "rust_analyzer",
            },
          handlers = {
            lsp.default_setup,
          },
        })

        lsp.setup()
    end,
}


return M
