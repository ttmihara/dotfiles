local luasnip = require "luasnip"
local types = require "luasnip.util.types"

luasnip.config.setup {
  history = true,
  updateevents = "TextChanged,TextChangedI",
  enable_autosnippets = false,
  region_check_events = "CursorMoved,CursorHold",
  delete_check_events = "TextChanged",
  store_selection_keys = "<Tab>",
  ext_opts = {
    [types.choiceNode] = {
      active = {
        virt_text = { { "●", "String" } },
      },
    },
    [types.insertNode] = {
      active = {
        virt_text = { { "●", "Boolean" } },
      },
    },
  },
}

require("luasnip.loaders.from_vscode").load()
