local builtin = require('telescope.builtin')
require('telescope').setup({
    pickers = {
        find_files = {
            hidden = true,
            file_ignore_patterns = {".git/", "node_modules/"}
        },
    }
})

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
