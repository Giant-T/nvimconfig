-- Goto files
vim.keymap.set("n", "<leader>pv", "<cmd>Ex<CR>")

-- Splits
vim.keymap.set("n", "<leader>vs", "<cmd>vs<CR>")
vim.keymap.set("n", "<leader>hs", "<cmd>sp<CR>")

-- Move through splits
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")

-- Moving lines
vim.keymap.set("n", "<A-j>", "<cmd>m+<CR>==")
vim.keymap.set("n", "<A-k>", "<cmd>m-2<CR>==")
vim.keymap.set("i", "<A-j>", "<cmd>m+<CR>")
vim.keymap.set("i", "<A-k>", "<cmd>m-2<CR>")

