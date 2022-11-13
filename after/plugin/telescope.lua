-- import telescope plugin safely
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
  return
end

local builtin_setup, builtin = pcall(require, "telescope.builtin")
if not builtin_setup then
  return
end

vim.keymap.set('n', '<C-p>', builtin.find_files, {})

telescope.setup({
    defaults = {
        file_ignore_patterns = {"node_modules"}
    }
})
