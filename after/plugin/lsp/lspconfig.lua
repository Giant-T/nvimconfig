local Remap = require("will.keymap")
local nnoremap = Remap.nnoremap

-- import lspconfig plugin safely
local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return
end

-- import cmp-nvim-lsp plugin safely
local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end

local on_attach = function()
    nnoremap("gd", function() vim.lsp.buf.definition() end)
    nnoremap("K", function () vim.lsp.buf.hover() end)
    nnoremap("[d", function() vim.diagnostic.goto_next() end)
    nnoremap("]d", function() vim.diagnostic.goto_prev() end)
    nnoremap("<leader>ga", function() vim.lsp.buf.code_action() end)
    nnoremap("<leader>rn", function() vim.lsp.buf.rename() end)
end

-- used to enable autocompletion
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Html config
lspconfig["html"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

-- Css config
lspconfig["cssls"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

-- Rust config
lspconfig["rust_analyzer"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

-- Typescript config
lspconfig["tsserver"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

-- PHP config
lspconfig["intelephense"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["sumneko_lua"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})
