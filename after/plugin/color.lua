require("rose-pine").setup({
    variant = 'main',
    disable_italics = true,

    -- Change of vim specific highlight groups
    highlight_groups = {
        Visual = { bg = 'rose', fg = 'base' }
    }
})

function SetColors(color)
    color = color or "rose-pine"

    vim.cmd.colorscheme(color)
end

SetColors()
