require("wethardware")

vim.keymap.set("n", "<leader><Tab>n", ":tabnew<CR>")
vim.keymap.set("n", "<leader><Tab>d", ":tabclose<CR>")
vim.keymap.set("n", "<leader><Tab>]", ":tabnext<CR>")
vim.keymap.set("n", "<leader><Tab>[", ":tabprevious<CR>")
vim.cmd[[colorscheme tokyonight-moon]]
