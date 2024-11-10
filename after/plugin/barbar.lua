local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<', '<Cmd>BufferPrevious<CR>', opts)
map('n', '>', '<Cmd>BufferNext<CR>', opts)

map('n', '<leader>,', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<leader>.', '<Cmd>BufferMoveNext<CR>', opts)

-- Pin/unpin buffer
--
-- map('n', '<leader>p', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<leader>x', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode

map('n', 'π', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
