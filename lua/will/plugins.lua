local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
    -- Statusline
    {"nvim-lualine/lualine.nvim", lazy = false},

    -- General plugins
    {"theprimeagen/harpoon", lazy = false},
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = function()
            require("nvim-treesitter.install").update({ with_sync = true })
        end,
    },
    -- {"nvim-treesitter/nvim-treesitter-context"}
    -- {"nvim-treesitter/playground"}

    -- Fuzzy finding
    {
        "nvim-telescope/telescope.nvim",
	lazy = false,
        tag = "0.1.0",
        dependencies = { { "nvim-lua/plenary.nvim" } },
    },

    -- LSP
    {
        "VonHeikemen/lsp-zero.nvim",
	lazy = false,
        dependencies = {
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
    },

    -- LaTeX
    "lervag/vimtex",

    -- Commenter
    "numToStr/Comment.nvim",

    -- Startup
    {
        "glepnir/dashboard-nvim",
        event = "VimEnter",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require('dashboard').setup({
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
                    },
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
                            action = 'Lazy update'
                        },
                    },
                }
            })
        end,
    },

    -- Themes
    {"ramojus/mellifluous.nvim", lazy = false},
    "ellisonleao/gruvbox.nvim",
    "alexvzyl/nordic.nvim",
    "sainnhe/gruvbox-material",
    "folke/tokyonight.nvim",
    "Shatur/neovim-ayu",
    { "rose-pine/neovim", name = "rose-pine" },
    { "catppuccin/nvim", name = "catppuccin" },
}, {})
