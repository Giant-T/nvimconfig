local M = {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    dependencies = { { "nvim-lua/plenary.nvim" } },
    config = function()
        require('telescope').setup({
            defaults = {
                file_ignore_patterns = { "node_modules", "dist", "build", ".git" }
            }
        })

        local builtin = require('telescope.builtin')
        local themes = require('telescope.themes')

        vim.keymap.set("n", "<C-p>", function()
            builtin.find_files(themes.get_dropdown({}))
        end)
    end,
}

return M
