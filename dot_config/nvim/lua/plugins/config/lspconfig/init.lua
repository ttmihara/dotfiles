local lspconfig = require "lspconfig"

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local common_setup_servers = {
  -- "clangd",
  -- "cmake",
  -- "pyright",
  -- "lemminx",
}

for _, server in pairs(common_setup_servers) do
  lspconfig[server].setup {
    on_attach = require("mappings").plugins["lspconfig"].on_attach,
    autostart = true,
    flags = {
      debounce_text_changes = 150,
    },
  }
end

require "plugins.config.lspconfig.sumneko_lua"

vim.diagnostic.config { virtual_text = true }
