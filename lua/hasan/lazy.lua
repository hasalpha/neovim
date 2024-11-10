-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out,                            "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end

vim.opt.rtp:prepend(lazypath)
---@type table<string, any>
local g = vim.g
g.mapleader = " "
g.maplocalleader = "\\"
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = false
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
vim.opt.jumpoptions = ''
vim.opt.showcmd = false
vim.opt.cursorline = true
vim.opt.shortmess:append('c')      -- Don't show redundant messages

vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", '<leader>p', '<Cmd>:Prettier<CR>', { desc = "Format using prettier" })
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
vim.keymap.set({ "n", "x" }, 'x', '"_x')
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>tt", ":Trouble diagnostics<CR>")
vim.keymap.set("n", "<leader>cn", ":cn<CR>")
vim.keymap.set("n", "<leader>cp", ":cp<CR>")
vim.keymap.set("n", "<leader>d", vim.lsp.buf.signature_help)
vim.keymap.set('n', '[d', function() vim.diagnostic.goto_prev() end)
vim.keymap.set('n', ']d', function() vim.diagnostic.goto_next() end)

require("lazy").setup('plugins')
-- Declare a global function to retrieve the current directory
function _G.get_oil_winbar()
	local dir = require("oil").get_current_dir()
	if dir then
		return vim.fn.fnamemodify(dir, ":~")
	else
		-- If there is no current directory (e.g. over ssh), just show the buffer name
		return vim.api.nvim_buf_get_name(0)
	end
end

-- Better grep (if ripgrep is installed)
if vim.fn.executable('rg') == 1 then
    vim.opt.grepprg = 'rg --vimgrep --no-heading --smart-case'
    vim.opt.grepformat = '%f:%l:%c:%m,%f:%l:%m'
end


require("oil").setup({
	view_options = { show_hidden = true },
	win_options = {
		winbar = "%!v:lua.get_oil_winbar()",
	},
})
