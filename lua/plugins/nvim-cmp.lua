return {
    "hrsh7th/nvim-cmp",
    event = "BufReadPre",
    dependencies = {
        { "hrsh7th/cmp-nvim-lsp" },
        { "onsails/lspkind.nvim" },
        { "hrsh7th/cmp-buffer" },

        -- Snippets
        { "L3MON4D3/LuaSnip" },             -- snippet engine
        { "saadparwaiz1/cmp_luasnip" },     -- for autocompletion
        { "rafamadriz/friendly-snippets" }, -- useful snippets
    },
    config = function(_, _)
        local cmp = require("cmp")
        local luasnip = require("luasnip")
        local lspkind = require("lspkind")

        -- load vs-code like snippets from plugins (e.g. friendly-snippets)
        require("luasnip/loaders/from_vscode").lazy_load()

        vim.opt.completeopt = "menu,menuone,noselect"

        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            window = {
                completion = cmp.config.window.bordered({}),
                documentation = cmp.config.window.bordered({}),
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-e>"] = cmp.mapping.abort(),        -- close completion window
                ["<CR>"] = cmp.mapping.confirm({ select = true }),
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" },
                { name = "buffer" },
            }),
            formatting = {
                format = lspkind.cmp_format({
                    maxwidth = 50,
                    ellipsis_char = "...",
                }),
            },
        })

        vim.keymap.set("i", "<Tab>", function()
            if luasnip.expand_or_jumpable() then
                luasnip.jump(1)
            else
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
            end
        end)
        vim.keymap.set("i", "<S-Tab>", function() luasnip.jump(-1) end)
    end
}
