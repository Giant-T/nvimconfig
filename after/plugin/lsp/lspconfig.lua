-- import lspconfig plugin safely
local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
	return
end

local root_pattern = require("lspconfig.util").root_pattern

local on_attach = function()
	vim.keymap.set("n", "gd", function()
		vim.lsp.buf.definition()
	end)
	vim.keymap.set("n", "K", function()
		vim.lsp.buf.hover()
	end)
	vim.keymap.set("n", "[d", function()
		vim.diagnostic.goto_next()
	end)
	vim.keymap.set("n", "]d", function()
		vim.diagnostic.goto_prev()
	end)
	vim.keymap.set("n", "<leader>va", function()
		vim.lsp.buf.code_action()
	end)
	vim.keymap.set("n", "<leader>rn", function()
		vim.lsp.buf.rename()
	end)
	vim.keymap.set("n", "<leader>vd", function()
		vim.diagnostic.open_float()
	end)
end

-- used to enable autocompletion
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Html config
lspconfig["html"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

-- Css config
lspconfig["cssls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

-- Rust config
lspconfig["rust_analyzer"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

-- Typescript config
lspconfig["tsserver"].setup({
	capabilities = capabilities,
    on_attach = on_attach,
})

lspconfig["sumneko_lua"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})
