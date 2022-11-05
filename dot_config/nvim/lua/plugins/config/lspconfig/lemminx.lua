local lemminx_path = vim.fn.getenv "HOME" .. "/.local/bin/lemminx"

require("lspconfig").lemminx.setup {
  cmd = { lemminx_path },
}
