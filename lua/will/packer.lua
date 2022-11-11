-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Commenter
    use 'numToStr/Comment.nvim'

    -- Statusline
    use 'nvim-lualine/lualine.nvim'

    -- Fuzzy finding
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Theme
    use 'sainnhe/gruvbox-material'
end)
