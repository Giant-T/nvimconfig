-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    -- Statusline
    use("nvim-lualine/lualine.nvim")

    -- General plugins
    use("theprimeagen/harpoon")
    use({
        "nvim-treesitter/nvim-treesitter",
        run = function()
            require("nvim-treesitter.install").update({ with_sync = true })
        end,
    })
    use("nvim-treesitter/nvim-treesitter-context")

    -- Fuzzy finding
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.0",
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    -- File manager
    use("lambdalisue/fern.vim")
    use("lambdalisue/fern-hijack.vim")
    use({
        "lambdalisue/fern-renderer-nerdfont.vim",
        requires = {
            { "lambdalisue/nerdfont.vim" },
        },
    })

    -- LSP
    use({
        "VonHeikemen/lsp-zero.nvim",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "onsails/lspkind.nvim" },
            { "hrsh7th/cmp-buffer" },

            -- Snippets
            { "L3MON4D3/LuaSnip" },             -- snippet engine
            { "saadparwaiz1/cmp_luasnip" },     -- for autocompletion
            { "rafamadriz/friendly-snippets" }, -- useful snippets
        },
    })

    -- Commenter
    use("numToStr/Comment.nvim")

    -- Startup
    use({
        "glepnir/dashboard-nvim",
        event = "VimEnter",
        requires = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            local db = require('dashboard')
            db.setup({
                theme = 'doom',
                config = {
                    header = {
                        '',
                        'M\"\"\"\"\"\"\"`YM MM\"\"\"\"\"\"\"\"`M MMP\"\"\"\"\"YMM M\"\"MMMMM\"\"M M\"\"M M\"\"\"\"\"`\'\"\"\"`YM',
                        'M  mmmm.  M MM  mmmmmmmM M\' .mmm. `M M  MMMMM  M M  M M  mm.  mm.  M',
                        'M  MMMMM  M M`      MMMM M  MMMMM  M M  MMMMP  M M  M M  MMM  MMM  M',
                        'M  MMMMM  M MM  MMMMMMMM M  MMMMM  M M  MMMM\' .M M  M M  MMM  MMM  M',
                        'M  MMMMM  M MM  MMMMMMMM M. `MMM\' .M M  MMP\' .MM M  M M  MMM  MMM  M',
                        'M  MMMMM  M MM        .M MMb     dMM M     .dMMM M  M M  MMM  MMM  M',
                        'MMMMMMMMMMM MMMMMMMMMMMM MMMMMMMMMMM MMMMMMMMMMM MMMM MMMMMMMMMMMMMM',
                        '',
                    }, --your header
                    center = {
                        {
                            icon = '󰍉 ',
                            icon_hl = 'Title',
                            desc = 'Find File           ',
                            desc_hl = 'String',
                            key = "f",
                            keymap = 'CTRL p',
                            key_hl = 'Number',
                            action = 'Telescope find_files'
                        },
                        {
                            icon = '󰃃 ',
                            icon_hl = 'Title',
                            desc = 'Lookup Marks           ',
                            desc_hl = 'String',
                            key = "m",
                            keymap = 'CTRL e',
                            key_hl = 'Number',
                            action = 'lua require("harpoon.ui").toggle_quick_menu()'
                        },
                        {
                            icon = '󰋚 ',
                            icon_hl = 'Title',
                            desc = 'Recent Files           ',
                            desc_hl = 'String',
                            key = "r",
                            key_hl = 'Number',
                            action = 'Telescope oldfiles'
                        },
                        {
                            icon = '󰑐 ',
                            icon_hl = 'Title',
                            desc = 'Update Plugins           ',
                            desc_hl = 'String',
                            key = "u",
                            key_hl = 'Number',
                            action = 'PackerSync'
                        },
                    },
                    footer = {} --your footer
                }
            })
        end,
    })

    -- Themes
    use("ellisonleao/gruvbox.nvim")
    use("alexvzyl/nordic.nvim")
    use("sainnhe/gruvbox-material")
    use("folke/tokyonight.nvim")
    use({ "rose-pine/neovim", as = "rose-pine" })
    use({ "catppuccin/nvim", as = "catppuccin" })
end)
