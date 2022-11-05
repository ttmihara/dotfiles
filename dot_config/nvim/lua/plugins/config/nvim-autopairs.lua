local autopairs = require "nvim-autopairs"
local Rule = require "nvim-autopairs.rule"

autopairs.setup {
  disable_filetype = { "TelescopePrompt" },
  map_bs = true,
  map_c_h = true,
  map_c_w = true,
}

autopairs.add_rules {
  Rule("$", "$", { "tex", "latex" }),
}
