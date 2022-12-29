local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.ensure_installed({ 'tsserver', 'eslint', 'rust_analyzer', 'quick_lint_js' })

local blob = require('cmp')
local cmp_select = { behavior = blob.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = blob.mapping.select_prev_item(cmp_select),
	['<C-n>'] = blob.mapping.select_next_item(cmp_select),
	['<C-y>'] = blob.mapping.complete(),
})

lsp.set_preferences({
	sign_icons = {
		error = " ",
		warn = " ",
		hint = " ",
		info = " "
	}
});

lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	update_in_insert = false,
	underline = true,
	severity_sort = false,
	float = true,
})
vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action)
vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename)
