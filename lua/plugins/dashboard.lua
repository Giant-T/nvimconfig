local M = {
    "glepnir/dashboard-nvim",
    event = "VimEnter",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function(_, _)
        require('dashboard').setup({
            theme = 'doom',
            config = {
                header = {
                    [[                                                                       ]],
                    [[                                                                     ]],
                    [[       ████ ██████           █████      ██                     ]],
                    [[      ███████████             █████                             ]],
                    [[      █████████ ███████████████████ ███   ███████████   ]],
                    [[     █████████  ███    █████████████ █████ ██████████████   ]],
                    [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
                    [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
                    [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
                    [[                                                                       ]],
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
}

return M
