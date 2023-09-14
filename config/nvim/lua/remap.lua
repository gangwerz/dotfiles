vim.g.mapleader = " "

vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.cmd('inoremap <expr> <TAB> pumvisible() ? "<C-y>" : "<TAB>"')
