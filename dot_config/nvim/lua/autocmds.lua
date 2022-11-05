local create_autocmd = vim.api.nvim_create_autocmd

create_autocmd({ "TermOpen" }, {
  pattern = { "term://*" },
  command = "setlocal nonumber norelativenumber | setfiletype terminal",
})
create_autocmd({ "FileType" }, {
  pattern = { "lspinfo" },
  command = "nnoremap <buffer> q <cmd>close!<cr>"
})
create_autocmd({ "FileType" }, {
  pattern = { "TelescopePrompt" },
  command = "nnoremap <buffer> q <cmd>close!<cr>"
})
