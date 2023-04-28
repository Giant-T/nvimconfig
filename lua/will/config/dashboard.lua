local dashboard = require('dashboard')

dashboard.custom_header = {
    '',
    'M\"\"\"\"\"\"\"`YM MM\"\"\"\"\"\"\"\"`M MMP\"\"\"\"\"YMM M\"\"MMMMM\"\"M M\"\"M M\"\"\"\"\"`\'\"\"\"`YM',
    'M  mmmm.  M MM  mmmmmmmM M\' .mmm. `M M  MMMMM  M M  M M  mm.  mm.  M',
    'M  MMMMM  M M`      MMMM M  MMMMM  M M  MMMMP  M M  M M  MMM  MMM  M',
    'M  MMMMM  M MM  MMMMMMMM M  MMMMM  M M  MMMM\' .M M  M M  MMM  MMM  M',
    'M  MMMMM  M MM  MMMMMMMM M. `MMM\' .M M  MMP\' .MM M  M M  MMM  MMM  M',
    'M  MMMMM  M MM        .M MMb     dMM M     .dMMM M  M M  MMM  MMM  M',
    'MMMMMMMMMMM MMMMMMMMMMMM MMMMMMMMMMM MMMMMMMMMMM MMMM MMMMMMMMMMMMMM',
    '',
}

dashboard.custom_center = {
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
}
