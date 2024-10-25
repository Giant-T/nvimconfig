local keymap = vim.keymap

-- Goto files
keymap.set("n", "<leader>pv", "<cmd>Ex<CR>")

-- Splits
keymap.set("n", "<leader>vs", "<cmd>vs<CR>")
keymap.set("n", "<leader>hs", "<cmd>sp<CR>")

-- Move through splits
keymap.set("n", "<leader>h", "<C-w>h")
keymap.set("n", "<leader>j", "<C-w>j")
keymap.set("n", "<leader>k", "<C-w>k")
keymap.set("n", "<leader>l", "<C-w>l")

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

vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
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
    local opts = { buffer = event.buf, remap = false }

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

    -- Format
    keymap.set("n", "<A-F>", function()
        vim.lsp.buf.format()
    end)
  end,
})
