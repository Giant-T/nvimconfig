local M = {
    "mellow-theme/mellow.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.g.mellow_italic_comments = false
        vim.g.mellow_transparent = true

        vim.api.nvim_create_autocmd({ "Colorscheme" }, {
            pattern = "*",
            callback = function()
                vim.cmd("highlight Visual gui=reverse")
            end,
        })

        vim.cmd.colorscheme("mellow")
    end,
}

return M
