local M = {
    "Shatur/neovim-ayu",
    lazy = false,
    opts = {
         overrides = {
            Normal = { bg = "None" },
            ColorColumn = { bg = "None" },
            SignColumn = { bg = "None" },
            Folded = { bg = "None" },
            FoldColumn = { bg = "None" },
            CursorLine = { bg = "None" },
            CursorColumn = { bg = "None" },
            WhichKeyFloat = { bg = "None" },
            VertSplit = { bg = "None" },
        },
    },
    config = function(_, opts)
        require("ayu").setup(opts)

        vim.cmd([[autocmd! ColorScheme * highlight FloatBorder guibg=none]])

        vim.cmd.colorscheme("ayu")

        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
}

return M
