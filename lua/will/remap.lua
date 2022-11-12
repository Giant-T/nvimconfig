local nnoremap = require("will.keymap").nnoremap

-- Goto files
nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- Splits
nnoremap("<leader>vs", "<cmd>vs<CR>")
nnoremap("<leader>hs", "<cmd>sp<CR>")

-- Move through splits
nnoremap("<leader>h", "<C-w>h")
nnoremap("<leader>j", "<C-w>j")
nnoremap("<leader>k", "<C-w>k")
nnoremap("<leader>l", "<C-w>l")
