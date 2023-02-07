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

-- Disable netrw banner
g.netrw_banner = 0

-- General
opt.swapfile = false
opt.hlsearch = false
opt.incsearch = true
opt.termguicolors = true

-- UI
opt.guicursor = ""
opt.laststatus = 3
