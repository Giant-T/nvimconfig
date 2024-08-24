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

        vim.keymap.set("n", "<C-p>", function()
            local _, ret, _ = utils.get_os_command_output({ 'git', 'rev-parse', '--is-inside-work-tree' })
            if ret == 0 then
                builtin.git_files()
            else
                builtin.find_files()
            end
        end)
    end,
}

return M
