vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", ":NvimTreeToggle<CR>")
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "JK", "<Esc>")
vim.keymap.set("n", "<leader>w", ":update<CR>")
vim.keymap.set("n", "<leader>q", ":q!<CR>")
vim.keymap.set("n", "<leader>tk", "<C-w>t<C-w>K")
vim.keymap.set("n", "<leader>th", "<C-w>t<C-w>H")
vim.keymap.set("n", "<leader>s", "<C-w>s<CR>")
vim.keymap.set("n", "<leader>v", "<C-w>v<CR>")
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set("n", '<leader>r', ':so %<CR>')
vim.keymap.set({ "n", "x" }, 'cp', '"+y')
vim.keymap.set({ "n", "x" }, '<leader>cv', '"+p')
vim.keymap.set("n", '<leader>psy', ':PackerSync<CR>')
vim.keymap.set({ "n", "x" }, 'x', '"_x')
vim.cmd [[packadd packer.nvim]]
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set({ "n", "x" }, "<leader>f", ":LspZeroFormat<CR>")
vim.keymap.set("n", "<leader>tt", ":TroubleToggle<CR>")
vim.keymap.set("n", "<leader>cn", ":cn<CR>")
vim.keymap.set("n", "<leader>cp", ":cp<CR>")
vim.keymap.set("n", "<leader>d",vim.lsp.buf.signature_help);

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.wrap = false
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.updatetime = 46
vim.opt.signcolumn = 'yes'
