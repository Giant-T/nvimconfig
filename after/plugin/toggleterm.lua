require("toggleterm").setup({
    size = 10,
    shell = 'C:\\"Program Files"\\PowerShell\\7\\pwsh.exe -nol',
})

function _G.set_terminal_keymaps()
    local opts = { buffer = 0 }
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

vim.api.nvim_set_keymap('n', '<C-t>', "<Cmd>ToggleTerm<CR>", { noremap = true, silent = true })
