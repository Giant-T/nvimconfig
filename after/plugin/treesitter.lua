-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

treesitter.setup({
    prefer_git = true,
    hightlight = {
        enable = true
    },
    indent = { enable = true },
    ensure_installed = {
        "css",
        "html",
        "javascript",
        "typescript",
        "rust",
    },
    auto_install = true
})
