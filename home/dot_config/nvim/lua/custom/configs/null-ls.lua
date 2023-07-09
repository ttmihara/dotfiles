local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
-- local lint = null_ls.builtins.diagnostics

local sources = {
	formatting.clang_format,
	formatting.cmake_format,
	formatting.stylua,
	formatting.prettier,
	formatting.black,
	formatting.xmllint,
	formatting.taplo,
}

null_ls.setup({
	debug = true,
	sources = sources,
})
