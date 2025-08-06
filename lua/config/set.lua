-- Global variables
local g = vim.g
local opt = vim.opt
local autocmd = vim.api.nvim_create_autocmd

-- Line numbers
opt.nu = true
opt.relativenumber = true
opt.cursorline = true
opt.cursorlineopt = "number"

-- Tabs
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

opt.wrap = false

-- Leader key
g.mapleader = " "

-- Mouse settings
opt.colorcolumn = "80"

-- netrw settings
g.netrw_banner = 0
g.netrw_liststyle = 0
g.netrw_browse_split = 0
g.netrw_bufsettings = "noma nomod nu nowrap ro nobl"
autocmd("FileType", {
    pattern = "netrw",
    callback = function()
        vim.opt_local.bufhidden = "wipe"
    end,
})

-- General
opt.swapfile = false
opt.hlsearch = false
opt.incsearch = true
opt.termguicolors = true
opt.scrolloff = 10
opt.autoread = true
g.editorconfig = true
autocmd("TextYankPost", {
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = "Visual",
            timeout = 40,
        })
    end,
})

-- UI
opt.guicursor = ""
opt.laststatus = 3
opt.showmode = false
opt.hidden = true
opt.winborder = "rounded"

