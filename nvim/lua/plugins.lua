vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use({
		"wbthomason/packer.nvim",
		commit = "6afb67460283f0e990d35d229fd38fdc04063e0a",
	})

	use({
		"nvim-telescope/telescope.nvim",
		commit = "d77b37f4520e5fc2cf4c74c12e42ed4b589bd367",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({
		"projekt0n/github-nvim-theme",
		commit = "2d930d1fc1d6a5e8d731fb10e8f02a2d985d5339",
	})

	use({
		"nvim-treesitter/nvim-treesitter",
		commit = "957aefe8148902897aad877e508ae7e747f155fc",
		config = function()
			require("plugins.treesitter")
		end,
	})

	use({
		"szw/vim-maximizer",
		commit = "2e54952fe91e140a2e69f35f22131219fcd9c5f1",
	})

	use({
		"moll/vim-bbye",
		commit = "25ef93ac5a87526111f43e5110675032dbcacf56",
	})

	use({
		"tpope/vim-fugitive",
		commit = "5f0d280b517cacb16f59316659966c7ca5e2bea2",
	})

	use({
		"lukas-reineke/indent-blankline.nvim",
		commit = "db7cbcb40cc00fc5d6074d7569fb37197705e7f6",
		config = function()
			require("plugins.indentline")
		end,
	})

	use({
		"nvim-lualine/lualine.nvim",
		commit = "a52f078026b27694d2290e34efa61a6e4a690621",
		config = function()
			require("lualine").setup({})
		end,
	})

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },

			-- Null-ls
			{ "jay-babu/mason-null-ls.nvim" },
			{ "jose-elias-alvarez/null-ls.nvim" },
		},
		config = function()
			require("plugins.lsp")
		end,
	})
end)
