local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.ensure_installed({
	'tsserver',
	'eslint',
	'rust_analyzer',
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<CR>'] = cmp.mapping.confirm({select = true}),
    ['<C-t>'] = cmp.mapping.complete(),
    ['<C-k>'] = cmp.mapping.scroll_docs(-4),
    ['<C-j>'] = cmp.mapping.scroll_docs(4),
  }
})


lsp.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr, remap = true}
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
end)
lsp.setup()

require'lspconfig'.typst_lsp.setup{}
