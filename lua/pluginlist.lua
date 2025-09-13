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

    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
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
	}
}

