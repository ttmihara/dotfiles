local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local servers = { "pyright", "cmake", "lemminx", "powershell_es", "taplo" }

-- Use default settings
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

-- Configure server-specific settings
lspconfig.clangd.setup({
	cmd = { "clangd", "-header-insertion=never" },
	on_attach = on_attach,
	capabilities = capabilities,
})
