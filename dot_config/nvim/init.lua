vim.g.mapleader = " "
local maps = require("mappings")
-- Set general key mappings
maps.set(maps.general)

for _, source in ipairs {
  "options",
  "autocmds",
  "plugins",
} do
  require(source)
end

vim.cmd("colorscheme tokyonight")
