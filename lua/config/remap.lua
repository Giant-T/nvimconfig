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
keymap.set("n", "<A-j>", "<cmd>m+<CR>==")
keymap.set("n", "<A-k>", "<cmd>m-2<CR>==")
keymap.set("i", "<A-j>", "<cmd>m+<CR>")
keymap.set("i", "<A-k>", "<cmd>m-2<CR>")

-- Recenter on move down and up
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Yankadank
keymap.set("x", "<leader>p", "\"_dP")
keymap.set("v", "<leader>y", "\"+y")

keymap.set("v", "K", "<Nop>")

-- Format
keymap.set("n", "<A-F>", function()
    vim.lsp.buf.format()
end)
