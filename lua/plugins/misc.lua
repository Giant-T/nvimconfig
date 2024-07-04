return {
    { "lervag/vimtex",      lazy = true, ft = { "tex" } },
    { "tpope/vim-fugitive", lazy = false },
    {
        "rbong/vim-flog",
        lazy = true,
        cmd = { "Flog", "Flogsplit", "Floggit" },
        dependencies = {
            "tpope/vim-fugitive",
        },
    },
}
