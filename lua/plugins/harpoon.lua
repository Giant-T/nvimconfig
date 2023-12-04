local M = {
    "theprimeagen/harpoon",
    lazy = false,
    config = function(_, _)
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        local keymap = vim.keymap

        keymap.set("n", "<leader>a", mark.add_file)
        keymap.set("n", "<C-e>", ui.toggle_quick_menu)
    end
}

return M
