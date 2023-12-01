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

        vim.keymap.set("n", "<C-p>", function() require('telescope.builtin').find_files() end)
    end,
}

return M
