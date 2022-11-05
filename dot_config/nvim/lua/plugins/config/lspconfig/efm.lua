require("lspconfig").efm.setup {
  init_options = {
    documentFormatting = true,
    hover = true,
    documentSymbol = true,
    codeAction = true,
    completion = true,
  },
  filetypes = { "xml" },
}
