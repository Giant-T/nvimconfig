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

lsp.ensure_installed({
    "tsserver",
    "eslint",
    "rust_analyzer",
    "cssls",
    "html",
})

local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
    ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
    ["<C-Space>"] = cmp.mapping.complete(),
})

lsp.set_preferences({
    sign_icons = {},
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings,
})

lsp.on_attach(
    function(client, bufnr)
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
)

lsp.setup()
