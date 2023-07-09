local M = {}

-- Disable default NvChad mappings
M.disabled = {
	n = {
		["<leader>fw"] = "", -- Telescope live_grep
		-- line numbers
		["<leader>n"] = "", -- { "<cmd> set nu! <CR>", "Toggle line number" },
		["<leader>rn"] = "", -- { "<cmd> set rnu! <CR>", "Toggle relative number" },
	},
}

M.general = {
	i = {
		["jk"] = { "<ESC>", "escape" },
		["kj"] = { "<ESC>", "escape" },
		["<A-j>"] = { "<Esc>:move .+1<CR>==gi", "Up current line" },
		["<A-k>"] = { "<Esc>:move .-2<CR>==gi", "Down current line" },
	},

	n = {
		["<A-j>"] = { "<Esc>:move .+1<CR>==", "Up current line" },
		["<A-k>"] = { "<Esc>:move .-2<CR>==", "Down current line" },

		-- Toggle options
		["<A-w>"] = { "<Esc>:set wrap!<CR>", "Toggle wrap" },
		["<A-n>"] = { "<Esc>:set nu!<CR>", "Toggle line number" },
		["<A-r>"] = { "<Esc>:set rnu!<CR>", "Toggle relative number" },

		-- Resize with arrows
		["<C-Up>"] = { ":resize -2<CR>" },
		["<C-Down>"] = { ":resize +2<CR>" },
		["<C-Left>"] = { ":vertical resize -2<CR>" },
		["<C-Right>"] = { ":vertical resize +2<CR>" },
	},

	t = {
		-- Terminal window navigation
		["<C-h>"] = { "<C-\\><C-N><C-w>h" },
		["<C-j>"] = { "<C-\\><C-N><C-w>j" },
		["<C-k>"] = { "<C-\\><C-N><C-w>k" },
		["<C-l>"] = { "<C-\\><C-N><C-w>l" },
	},

	v = {
		["<"] = { "<gv", "" },
		[">"] = { ">gv", "" },
	},

	x = {
		["<A-j>"] = { ":m '>+1<CR>gv-gv" },
		["<A-k>"] = { ":m '<-2<CR>gv-gv" },
	},
}

M.packer = {
	n = {
		["<leader>ps"] = { "<cmd> PackerStatus <CR>", "PackerStatus" },
		["<leader>pS"] = { "<cmd> PackerSync <CR>", "PackerSync" },
		["<leader>pc"] = { "<cmd> PackerCompile <CR>", "PackerCompile" },
		["<leader>pC"] = { "<cmd> PackerClean <CR>", "PackerClean" },
		["<leader>pi"] = { "<cmd> PackerInstall <CR>", "PackerInstall" },
		["<leader>pl"] = { "<cmd> PackerLoad <CR>", "PackerLoad" },
		["<leader>pu"] = { "<cmd> PackerUpdate <CR>", "PackerUpdate" },
	},
}

M.mason = {
	n = {
		["<leader>mm"] = { "<cmd> Mason <CR>", "Mason" },
		["<leader>ml"] = { "<cmd> MasonLog <CR>", "MasonLog" },
		["<leader>mu"] = { "<cmd> MasonUpdate <CR>", "MasonUpdate" },
	},
}

M.telescope = {
	n = {
		["<leader>fk"] = { "<cmd> Telescope keymaps <CR>", "find keymaps" },
		["<leader>fr"] = { "<cmd> Telescope command_history <CR>", "command history" },
		["<leader>fg"] = { "<cmd> Telescope live_grep <CR>", "find grep" },
	},
}

M.nvimtree = {
	n = {
		["<leader>n"] = { "<cmd> NvimTreeFindFileToggle <CR>", "Toggle nvimtree find" },
	},
}

M.LSP = {
	n = {
		["<leader>li"] = { "<cmd> LspInfo <CR>", "LspInfo" },
		["<leader>lr"] = { "<cmd> LspRestart <CR>", "LspRestart" },
		["<leader>ll"] = { "<cmd> LspLog <CR>", "LspLog" },
		["<leader>fm"] = {
			function()
				vim.lsp.buf.format({ async = true })
			end,
			"LSP formatting",
		},
	},
}

return M
