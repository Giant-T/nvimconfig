require("rose-pine").setup({
    --variant = 'main',
    disable_italics = true,
    disable_background = true,

    -- Change of vim specific highlight groups
    highlight_groups = {
        Visual = { bg = 'rose', fg = 'base' }
    }
})

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

function SetColors(color)
    color = color or "gruvbox"

    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

SetColors()
