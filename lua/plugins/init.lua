return {
	checker = { enabled = true },
	{
		'nvim-treesitter/nvim-treesitter',
		build = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	},

	{
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	},

	{
		"windwp/nvim-ts-autotag",
		config = function() require("nvim-ts-autotag").setup() end
	},
	"tpope/vim-fugitive",
	{
		'nvim-treesitter/nvim-treesitter-context',
		config = function() require("treesitter-context").setup() end
	},

	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'kyazdani42/nvim-web-devicons', opt = true }
	},
	'nvim-tree/nvim-web-devicons',
	{
		"folke/trouble.nvim",
		dependencies = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup {}
		end
	},
	'folke/lsp-colors.nvim',
	'tjdevries/colorbuddy.nvim',
	'f-person/git-blame.nvim',
	'lukas-reineke/indent-blankline.nvim',
	{ 'romgrk/barbar.nvim',      wants = 'nvim-web-devicons' },
	'tpope/vim-surround',
	{
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	},
	{ "ellisonleao/gruvbox.nvim" },
	'NvChad/nvim-colorizer.lua',
	'RRethy/vim-illuminate',
	'yonlu/omni.vim',
	'olimorris/onedarkpro.nvim',
	{ 'stevearc/dressing.nvim' },

	'kevinhwang91/nvim-bqf',
	{
		"ray-x/lsp_signature.nvim",
	},
	'prettier/vim-prettier',
}
