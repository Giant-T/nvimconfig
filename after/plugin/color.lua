-- Rose pine setup
--[[ require("rose-pine").setup({
    --variant = 'main',
    disable_italics = true,
    disable_background = true,
    -- Change of vim specific highlight groups
    highlight_groups = {
        Visual = { bg = 'rose', fg = 'base' }
    }
}) ]]

-- Classic gruvbox setup
--[[ require("gruvbox").setup({
    bold = false,
    italic = {
        strings = false,
        comments = false,
    },
    invert_selection = true,
    inverse = false,
    transparent_mode = true,
    dim_inactive = true,
    contrast = "soft",
    -- Override de couleur
    palette_overrides = {
        dark0 = "#191724",
        dark1 = "#191724",
    }
}) ]]

require 'mellifluous'.setup({
    dim_inactive = false,

    mellifluous = {
        color_overrides = {
            dark = {
                comments = '#575757',
            },
        },
    },

    color_set = 'mellifluous',
    styles = {
        -- see :h attr-list for options. set {} for NONE, { option = true } for option
        comments = { italic = false, },
        conditionals = {},
        folds = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    transparent_background = {
        enabled = true,
        floating_windows = true,
        telescope = true,
        file_tree = true,
        cursor_line = true,
        status_line = true,
    },
    flat_background = {
        line_numbers = false,
        floating_windows = false,
        file_tree = false,
        cursor_line_number = true,
    },
    plugins = {
        cmp = true,
        gitsigns = true,
        indent_blankline = false,
        nvim_tree = {
            enabled = true,
            show_root = false,
        },
        telescope = {
            enabled = true,
            nvchad_like = true,
        },
    },
})

require("nordic").setup({
    theme = "nordic",
    italic_comments = false,
    transparent_bg = true,
    bright_border = false,
    bold_keywords = false,

    override = {
        ['@parameter'] = {
            italic = false
        },
        ['@text.emphasis'] = {
            italic = false
        },
        ['@variable.builtin'] = {
            italic = false
        },
        ['@namespace'] = {
            italic = false
        },
    },

    nordic = {
        reduced_blue = true,
    },

    telescope = {
        style = 'flat',
    },
})

require("ayu").setup({
     overrides = {
        Normal = { bg = "None" },
        ColorColumn = { bg = "None" },
        SignColumn = { bg = "None" },
        Folded = { bg = "None" },
        FoldColumn = { bg = "None" },
        CursorLine = { bg = "None" },
        CursorColumn = { bg = "None" },
        WhichKeyFloat = { bg = "None" },
        VertSplit = { bg = "None" },
    },
})

-- Grubox material setup
function SetupGruvboxMaterial()
    vim.g.gruvbox_material_foreground = "mix"
    vim.g.gruvbox_material_transparent_background = 1
    vim.g.gruvbox_material_visual = "reverse"
    vim.g.gruvbox_material_diagnostic_virtual_text = "grey"
    vim.g.gruvbox_material_disable_italic_comment = 1
end

function SetColors(color)
    color = color or "ayu"

    if color == "gruvbox-material" then
        SetupGruvboxMaterial()
    end

    vim.cmd([[autocmd! ColorScheme * highlight FloatBorder guibg=none]])

    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

SetColors()
