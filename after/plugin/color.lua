-- Rose pine setup
require("rose-pine").setup({
    --variant = 'main',
    disable_italics = true,
    disable_background = true,
    -- Change of vim specific highlight groups
    highlight_groups = {
        Visual = { bg = 'rose', fg = 'base' }
    }
})

-- Classic gruvbox setup
require("gruvbox").setup({
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
    color = color or "gruvbox-material"

    if color == "gruvbox-material" then
        SetupGruvboxMaterial()
    end

    vim.cmd([[autocmd! ColorScheme * highlight FloatBorder guibg=none]])

    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

SetColors()
