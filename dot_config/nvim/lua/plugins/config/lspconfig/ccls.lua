require("lspconfig").ccls.setup {
  on_attach = require("mappings").lspconfig.on_attach,
  cmd = { "ccls" },
  flags = {
    debounce_text_changes = 150,
  },
  init_options = {
    cache = {
      directory = "/tmp/ccls-cache",
    },
  },
  handlers = {
    ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
      virtual_text = true,
    }),
  },
}
