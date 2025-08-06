local M = {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })
    end,
    opts = {
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
        sync_install = false,
        indent = { enable = true },
        ensure_installed = {
            "css",
            "html",
            "javascript",
            "c",
            "rust",
            "cpp",
            "lua",
        },
        auto_install = true
    },
    config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
    end,
}

return M
