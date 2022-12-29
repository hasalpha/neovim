require 'nvim-treesitter.configs'.setup {
	ensure_installed = { "help", "javascript", "typescript", "c", "lua", "rust" },

	sync_install = false,

	auto_install = true,
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "<CR>", -- set to `false` to disable one of the mappings
			scope_incremental = "<CR>",
			node_incremental = "<TAB>",
			node_decremental = "<S-TAB>",
		},

	},
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true
	}
}
