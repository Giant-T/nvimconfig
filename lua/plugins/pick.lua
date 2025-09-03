return {
    "nvim-mini/mini.pick",
    lazy = false,
    config = function()
        require('mini.pick').setup({
        })

        vim.keymap.set("n", "<C-p>", function()
            MiniPick.builtin.files({ tool = 'git' })
        end)
    end,
}
