require('lualine').setup {
    options = {
        theme = 'nordic',
        component_separators = '',
        section_separators = '',
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'buffers' },
        lualine_c = { 'branch', 'diff', 'diagnostics' },
        lualine_x = { 'encoding', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
}
