local wk = require("which-key")
local maps = require("mappings")

wk.setup {
  triggers_blacklist = {
    -- list of mode / prefixes that should never be hooked by WhichKey
    -- this is mostly relevant for key maps that start with a native binding
    -- most people should not need to change this
    n = { "v", "y", "d", "c", "<", ">" },
    c = { "j", "k" },
    i = { "j", "k" },
    v = { "j", "k" },
  },
}

wk.register({
  ["<leader>"] = {
    l = { name = "LSP", },
    p = { name = "Packer", },
    s = {
      name = "Search",
--       b = { "<cmd>Telescope buffers<cr>", "Find Buffer" },
--       f = { "<cmd>Telescope find_files<cr>", "Find File" },
--       g = { "<cmd>Telescope live_grep<cr>", "Grep" },
--       h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
--       k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
--       r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
--       R = { "<cmd>Telescope registers<cr>", "Registers" },
--       C = { "<cmd>Telescope commands<cr>", "Commands" },
    },
  },
})
