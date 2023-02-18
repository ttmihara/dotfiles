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
    cmd = {'Git', 'G'}
  },
}

return M
