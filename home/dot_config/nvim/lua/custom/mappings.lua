local M = {}

M.general = {
  i = {
    ["jk"] = {"<ESC>", "escape"},
    ["kj"] = {"<ESC>", "escape"},
    ["<A-j>"] = { "<Esc>:move .+1<CR>==gi", "Up current line" },
    ["<A-k>"] = { "<Esc>:move .-2<CR>==gi", "Down current line" },
  },
  n = {
    ["<A-j>"] = { "<Esc>:move .+1<CR>==", "Up current line" },
    ["<A-k>"] = { "<Esc>:move .-2<CR>==", "Down current line" },
  }

}

M.packer = {
  n = {
    ["<leader>ps"] = {"<cmd> PackerStatus <CR>", "PackerStatus"},
    ["<leader>pS"] = {"<cmd> PackerSync <CR>", "PackerSync"},
    ["<leader>pc"] = {"<cmd> PackerCompile <CR>", "PackerCompile"},
    ["<leader>pC"] = {"<cmd> PackerClean <CR>", "PackerClean"},
    ["<leader>pi"] = {"<cmd> PackerInstall <CR>", "PackerInstall"},
    ["<leader>pl"] = {"<cmd> PackerLoad <CR>", "PackerLoad"},
    ["<leader>pu"] = {"<cmd> PackerUpdate <CR>", "PackerUpdate"},
  }
}

M.mason = {
  n = {
    ["<leader>mm"] = {"<cmd> Mason <CR>", "Mason"},
    ["<leader>ml"] = {"<cmd> MasonLog <CR>", "MasonLog"},
    ["<leader>mu"] = {"<cmd> MasonUpdate <CR>", "MasonUpdate"},
  }
}

M.LSP = {
  n = {
    ["<leader>li"] = {"<cmd> LspInfo <CR>", "LspInfo"},
    ["<leader>lr"] = {"<cmd> LspRestart <CR>", "LspRestart"},
    ["<leader>ll"] = {"<cmd> LspLog <CR>", "LspLog"},
  }
}

return M
