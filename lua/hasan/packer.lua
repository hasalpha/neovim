-- Only required if you have packer configured as `opt`
requires = { { 'nvim-lua/plenary.nvim' } }
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	}

	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

	use {
		"windwp/nvim-ts-autotag",
		config = function() require("nvim-ts-autotag").setup() end
	}

	use "tpope/vim-fugitive"

	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-nvim-lua' },
			{
				'hrsh7th/cmp-cmdline'
			},
			-- Snippets
			{ 'L3MON4D3/LuaSnip' },
			{ 'rafamadriz/friendly-snippets' },
		}
	}

	use { 'nvim-treesitter/nvim-treesitter-context',
		config = function() require("treesitter-context").setup() end
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use 'nvim-tree/nvim-web-devicons'
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup {}
		end
	}
	use 'folke/lsp-colors.nvim'
	use 'tjdevries/colorbuddy.nvim'
	use 'f-person/git-blame.nvim'
	use 'lukas-reineke/indent-blankline.nvim'
	use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}
	use 'tpope/vim-surround'
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}
	use { "ellisonleao/gruvbox.nvim" }
	use 'NvChad/nvim-colorizer.lua'
	use 'RRethy/vim-illuminate'
	use({
  "utilyre/barbecue.nvim",
  requires = {
    "neovim/nvim-lspconfig",
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons", -- optional dependency
  },
  after = "nvim-web-devicons", -- keep this if you're using NvChad
  config = function()
    require("barbecue").setup()
  end,
})
	use 'yonlu/omni.vim'
	use 'olimorris/onedarkpro.nvim'
end)
