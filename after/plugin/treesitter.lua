-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

treesitter.setup({
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
