-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Statusline
	use("nvim-lualine/lualine.nvim")

	-- General plugins
	use("theprimeagen/harpoon")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	-- Fuzzy finding
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({
		"VonHeikemen/lsp-zero.nvim",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "onsails/lspkind.nvim" },
			{ "hrsh7th/cmp-buffer" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" }, -- snippet engine
			{ "saadparwaiz1/cmp_luasnip" }, -- for autocompletion
			{ "rafamadriz/friendly-snippets" }, -- useful snippets
		},
	})

	-- Themes
	use("sainnhe/gruvbox-material")
	use("folke/tokyonight.nvim")
	use({ "rose-pine/neovim", as = "rose-pine" })
	use({ "catppuccin/nvim", as = "catppuccin" })
end)
