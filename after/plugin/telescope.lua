local builtin = require('telescope.builtin')
local repo = require('telescope').extensions.repo
vim.keymap.set('n', '<leader><leader>', builtin.find_files, {})
vim.keymap.set('n', '<leader>pp', repo.list)
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fp', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

