-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

local install_status, treesitter_install = pcall(require, "nvim-treesitter.install")
if not install_status then
    return
end

treesitter_install.compilers = { "clang" }

treesitter.setup {
    sync_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
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

