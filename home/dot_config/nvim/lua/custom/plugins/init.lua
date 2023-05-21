local M = {
	["goolord/alpha-nvim"] = {
		disable = true,
		opt = false,
	},
	["folke/which-key.nvim"] = {
		disable = false,
		opt = false,
	},
	["tpope/vim-fugitive"] = {
		disable = false,
		opt = true,
		cmd = { "Git", "G" },
	},
	["neovim/nvim-lspconfig"] = {
		disable = false,
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.plugins.lspconfig")
		end,
	},
	["jose-elias-alvarez/null-ls.nvim"] = {
		config = function()
			require("custom.plugins.null-ls")
		end,
	},
}

return M
