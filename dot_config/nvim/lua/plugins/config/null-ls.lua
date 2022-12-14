local null_ls = require "null-ls"

null_ls.setup {
  sources = {
    -- null_ls.builtins.formatting.cmake_format,
    null_ls.builtins.formatting.shfmt,
    -- null_ls.builtins.formatting.stylua,
    -- null_ls.builtins.formatting.xmllint,
    null_ls.builtins.formatting.yapf,
  },
  -- you can reuse a shared lspconfig on_attach callback here
  on_attach = function(client)
    if client.server_capabilities.document_formatting then
      vim.cmd [[
      augroup LspFormatting
        autocmd! * <buffer>
        autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
      augroup END
      ]]
    end
  end,
}
