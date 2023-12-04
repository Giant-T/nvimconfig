local M = {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require('gruvbox').setup({
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
            palette_overrides = {
                dark0 = "",
                dark1 = "",
            }
        })

        vim.cmd([[autocmd! ColorScheme * highlight FloatBorder guibg=none]])

        vim.cmd.colorscheme('gruvbox');

        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
}

return M
