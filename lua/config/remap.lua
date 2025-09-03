local keymap = vim.keymap
local autocmd = vim.api.nvim_create_autocmd

-- Goto files
keymap.set("n", "<leader>pv", "<cmd>Ex<CR>")

-- Splits
keymap.set("n", "<leader>vs", "<cmd>vs<CR>")
keymap.set("n", "<leader>hs", "<cmd>sp<CR>")

-- Moving lines
keymap.set("n", "<A-j>", "<cmd>m+<CR>")
keymap.set("n", "<A-k>", "<cmd>m-2<CR>")
keymap.set("i", "<A-j>", "<cmd>m+<CR>")
keymap.set("i", "<A-k>", "<cmd>m-2<CR>")

-- Recenter on move down and up
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Yankadank
keymap.set("x", "<leader>p", "\"_dP")
keymap.set("v", "<leader>y", "\"+y")

keymap.set("v", "K", "<Nop>")

-- Quickfix
keymap.set("n", "<C-j>", "<cmd>cnext<CR>")
keymap.set("n", "<C-k>", "<cmd>cprev<CR>")

autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(event)
        vim.diagnostic.config({
            virtual_text = {
                prefix = "- ",
            },
        })

        local opts = { buffer = event.buf, remap = false }

        keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        keymap.set("n", "grt", vim.lsp.buf.type_definition, opts)

        -- Format
        keymap.set("n", "grf", vim.lsp.buf.format)
    end,
})
