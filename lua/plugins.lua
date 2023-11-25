-- lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

	-- Which-Key
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
	},

	-- LSP-Config
	{
		"neovim/nvim-lspconfig",
		event = "InsertEnter",
	},

	-- Nvim-Cmp
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",

			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
		},
		event = "VeryLazy",
	},

	-- Auto-Pair
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
	},

	-- Mason
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
		},
		init = function()
			require("mason").setup()
			require("mason-lspconfig").setup()
		end,
		event = "VeryLazy",
	},

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = true,
	},

	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		lazy = true,
		init = function()
			require("telescope").setup()
		end,
	},

	-- Nvim-Tree
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		lazy = true,
		init = function()
			require("nvim-tree").setup()
		end,
	},

	-- colorscheme
	{
		"savq/melange-nvim",
	},

	{
		"stevearc/conform.nvim",
		VeryLazy = true,
	},
})
