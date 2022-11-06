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
    on_attach = function(client, bufnr)
      local create_autocmd = vim.api.nvim_create_autocmd
      local create_augroup = vim.api.nvim_create_augroup
      local clear_autocmds = vim.api.nvim_clear_autocmds
      if client.server_capabilities.document_highlight then
        create_augroup("LspDocumentHighlight", { clear = false })
        clear_autocmds({ buffer = bufnr, group = "LspDocumentHighlight" })
        create_autocmd({ "CursorHold", "CursorHoldI" }, {
          group = "LspDocumentHighlight",
          buffer = bufnr,
          callback = vim.lsp.buf.document_highlight,
        })
        create_autocmd({ "CursorMoved" }, {
          group = "LspDocumentHighlight",
          buffer = bufnr,
          callback = vim.lsp.buf.clear_references,
        })
      end
    end,
    autostart = true,
    flags = {
      debounce_text_changes = 150,
    },
  }
end

require "plugins.config.lspconfig.sumneko_lua"

vim.diagnostic.config { virtual_text = true }
