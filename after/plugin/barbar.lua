local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<', '<Cmd>BufferPrevious<CR>', opts)
map('n', '>', '<Cmd>BufferNext<CR>', opts)

map('n', '≤', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '≥', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '¡', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '™', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '£', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '¢', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '∞', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '§', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '¶', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '•', '<Cmd>BufferGoto 8<CR>', opts)
map('n', 'ª', '<Cmd>BufferGoto 9<CR>', opts)
map('n', 'º', '<Cmd>BufferLast<CR>', opts)

-- Pin/unpin buffer
-- 
map('n', '<leader>p', '<Cmd>BufferPin<CR>', opts)
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
