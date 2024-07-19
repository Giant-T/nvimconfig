local M = {
    -- "mellow-theme/mellow.nvim",
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("gruvbox").setup({
            terminal_colors = true,
            contrast = "soft",
            invert_selection = true,
            inverse = true,
            transparent_mode = true,
            bold = false,
            italic = {
                strings = false,
                comments = false,
            },
            overrides = {
                ["@type"] = { link = "GruvboxOrange" },
            },
        })

        vim.cmd.colorscheme("gruvbox")
    end,
}

return M
