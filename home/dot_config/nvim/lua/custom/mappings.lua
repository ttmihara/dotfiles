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

return M
