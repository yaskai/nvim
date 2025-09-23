-- pluglinlist.lua
return {
{ 'numToStr/Comment.nvim', opts = {} },

    {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end
    },

	--[[
    {
        "sainnhe/gruvbox-material",
		priority = 1000,
        config = function()
           	vim.cmd("let g:gruvbox_material_background = 'hard' ")
			vim.cmd("let g:gruvbox_material_better_performance = 1")
			vim.cmd("colorscheme gruvbox-material")
        end
    },
	--]]

	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end
	},

    --"williamboman/mason.nvim",
    --"williamboman/mason-lspconfig.nvim",
	--"mason-org/mason.nvim",
    --"mason-org/mason-lspconfig.nvim",

    "neovim/nvim-lspconfig",

	{
		"mason-org/mason.nvim",
		opts = {}
	},

	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},

	"nvzone/volt",

	{
		"eoh-bse/minintro.nvim",
		opts = { color = "#eb6f92" },
		config = true,
		lazy = false, 
	},
    
	{
        'hrsh7th/nvim-cmp',
        dependencies = {
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets',
            
            'hrsh7th/cmp-nvim-lsp',
            
        },
    },
    
	{
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },

    { 
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' } 
    },

    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
    },
	
	{
		"ellisonleao/carbon-now.nvim",
		lazy = true,
		cmd = "CarbonNow",
		---@param opts cn.ConfigSchema
		opts = {}
	},

	--[[
	{
		"michaelrommel/nvim-silicon",
		lazy = true,
		cmd = "Silicon",
		config = function()
			require("silicon").setup({
				font = "MonaSpiceXe NFP=34; Noto Color Emoji=34"
			})
		end
	},
	]]--

	{
		"mikavilpas/yazi.nvim",
		event = "VeryLazy",
		dependencies = {
			"folke/snacks.nvim"
		}
	},

	{ 
		"nvim-tree/nvim-web-devicons",
		opts = {} 
	},

	{
		"nvim-lualine/lualine.nvim",
		dependencies = { 'nvim-tree/nvim-web-devicons' }
	},

	--[[
	{
		"nvim-neorg/neorg",
		lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
		version = "*", -- Pin Neorg to the latest stable release
		config = true,
	},
	]]--

	{
	  "nvim-neorg/neorg",
	  lazy = false,       -- don't lazy load (it breaks parsers/workspaces)
	  version = "*",      -- use latest stable release
	  build = ":Neorg sync-parsers",
	  dependencies = { "nvim-lua/plenary.nvim" },
	  config = function()
		require("neorg").setup {
		  load = {
			["core.defaults"] = {}, -- loads common defaults
			["core.concealer"] = {}, -- adds pretty icons
			["core.dirman"] = { -- workspace manager
			  config = {
				workspaces = {
				  notes = "~/Documents/Notes",
				},
				default_workspace = "notes",
			  },
			},
			["core.journal"] = {
			  config = {
				workspace = "notes",
			  },
			},
		  },
		}
	  end,
	},
}

