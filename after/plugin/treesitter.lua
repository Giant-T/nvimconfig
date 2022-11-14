-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

treesitter.setup {
    sync_install = false,
    highlight = {
        enable = true,
        -- disable = { "" },
        additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },
    ensure_installed = {
        "css",
        "html",
        "javascript",
        "typescript",
        "tsx",
        "rust",
        "lua",
        "php"
    },
    auto_install = true
}

