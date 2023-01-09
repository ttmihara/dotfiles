local alpha = require "alpha"
local dashboard = require "alpha.themes.dashboard"

dashboard.section.header.val = {
  [[]],
  [[███╗   ███╗████╗██╗  ██╗ █████╗ ██████╗  █████╗ ██╗███████╗    ██╗   ██╗████╗███╗   ███╗]],
  [[████╗ ████║ ██╔╝██║  ██║██╔══██╗██╔══██╗██╔══██╗██║██╔════╝    ██║   ██║ ██╔╝████╗ ████║]],
  [[██╔████╔██║ ██║ ███████║███████║██████╔╝███████║╚═╝███████╗    ██║   ██║ ██║ ██╔████╔██║]],
  [[██║╚██╔╝██║ ██║ ██╔══██║██╔══██║██╔══██╗██╔══██║   ╚════██║    ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
  [[██║ ╚═╝ ██║████╗██║  ██║██║  ██║██║  ██║██║  ██║   ███████║     ╚████╔╝ ████╗██║ ╚═╝ ██║]],
  [[╚═╝     ╚═╝╚═══╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚══════╝      ╚═══╝  ╚═══╝╚═╝     ╚═╝]],
  [[]],
}
dashboard.section.buttons.val = {
  dashboard.button("e", "  New file", ":enew<CR>"),
  dashboard.button("SPC e", "  Explorer", ":NvimTreeToggle<CR>"),
  dashboard.button("SPC sf", "  Find files", ":Telescope find_files<CR>"),
  dashboard.button("SPC so", "  Find oldfiles", ":Telescope oldfiles<CR>"),
  dashboard.button("q", "  Quit NVIM", ":qa<CR>"),
}
dashboard.config.opts.noautocmd = false

local num_plugins_loaded = #vim.fn.globpath(vim.fn.stdpath "data" .. "/site/pack/packer/start", "*", 0, 1)
dashboard.section.footer.val = {
  "Mihara's Vim loaded " .. num_plugins_loaded .. " plugins ",
}

alpha.setup(dashboard.config)
