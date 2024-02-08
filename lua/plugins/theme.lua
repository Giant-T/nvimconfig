local M = {
    "ramojus/mellifluous.nvim",
    lazy = false,
    config = function(_, _)
        require("mellifluous").setup({
            color_set = "mellifluous",
            mellifluous = {
                neutral = true,
                bg_contrast = "hard",
            },
            transparent_background = {
                enabled = true,
                floating_windows = true,
            },
            plugins = {
                telescope = {
                    enabled = true,
                    nvchad_like = false,
                },
                cmp = true,
            },
        })

        vim.cmd.colorscheme("mellifluous")

        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "Visual", { reverse = true })
    end
}

return M
