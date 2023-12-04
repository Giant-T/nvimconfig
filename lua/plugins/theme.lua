local M = {
    "Shatur/neovim-ayu",
    lazy = false,
    config = function(_, _)
        local colors = require("ayu.colors")
        colors.generate()

        require("ayu").setup({
            overrides = {
                Normal = { bg = "None" },
                SignColumn = { bg = "None" },
                Folded = { bg = "None" },
                FoldColumn = { bg = "None" },
                CursorLine = { bg = "None" },
                CursorColumn = { bg = "None" },
                WhichKeyFloat = { bg = "None" },
                VertSplit = { bg = "None" },
                Character = { fg = colors.string },
                Boolean = { fg = colors.lsp_parameter },
                Number = { fg = colors.lsp_parameter },
                FloatNumber = { fg = colors.lsp_parameter },
            }
        })

        vim.cmd([[autocmd! ColorScheme * highlight FloatBorder guibg=none]])

        vim.cmd.colorscheme("ayu")

        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
}

return M
