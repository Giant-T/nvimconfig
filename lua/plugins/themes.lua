local M = {
    {
        "mellow-theme/mellow.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.mellow_bold_functions = true
            vim.g.mellow_transparent = true
            vim.g.mellow_highlight_overrides = {
                Visual = { reverse = true },
            }

            -- vim.cmd.colorscheme("mellow")
        end,
    },
    {
        "vague2k/vague.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("vague").setup({
                transparent = true,
                style = {
                    strings = "none",
                },
                on_highlights = function(highlights)
                    highlights["LspReferenceText"] = { gui = "bold" }
                end,
            })

            vim.cmd.colorscheme("vague")
            vim.api.nvim_set_hl(0, "Visual", { reverse = true })
            vim.api.nvim_set_hl(0, "BlinkCmpMenu", { bg = nil })
            vim.api.nvim_set_hl(0, "Pmenu", { bg = nil })
        end,
    },
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("gruvbox").setup({
                terminal_colors = true,
                contrast = "soft",
                invert_selection = true,
                inverse = true,
                transparent_mode = true,
                overrides = {
                    ["@type"] = { link = "GruvboxOrange" },
                },
            })

            -- vim.cmd.colorscheme("gruvbox")
            -- vim.api.nvim_set_hl(0, "BlinkCmpMenu", { bg = nil })
        end,
    },
    {
        "Tsuzat/NeoSolarized.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("NeoSolarized").setup({
                style = "dark",
                transparent = true,
            })

            -- vim.cmd.colorscheme("NeoSolarized")
            -- vim.api.nvim_set_hl(0, "Visual", { reverse = true })
        end,
    }
}

return M
