vim.g.mapleader = " "

for _, source in ipairs {
  "options",
  "autocmds",
  "plugins",
} do
  require(source)
end

vim.cmd("colorscheme tokyonight")
