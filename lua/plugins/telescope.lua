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
        local utils = require('telescope.utils')

        vim.keymap.set("n", "<C-p>", builtin.find_files)
    end,
}

return M
