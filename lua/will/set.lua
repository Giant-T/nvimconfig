-- Global variables
local g = vim.g
local opt = vim.opt

-- Line numbers
opt.nu = true
opt.relativenumber = true

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
g.netrw_liststyle = 3
g.netrw_bufsettings = "noma nomod nu nowrap ro nobl"

-- General
opt.swapfile = false
opt.hlsearch = false
opt.incsearch = true
opt.termguicolors = true
opt.scrolloff = 10
opt.autoread = true
g.editorconfig = true

-- UI
opt.guicursor = ""
opt.laststatus = 3
opt.showmode = false

vim.o.hidden = true
