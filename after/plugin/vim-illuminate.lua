local illuminate = require('illuminate')

vim.keymap.set("n", "<C-d>", illuminate.goto_next_reference);
vim.keymap.set("n", "<C-f>", illuminate.goto_prev_reference);
