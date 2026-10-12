-- Extra language servers without editing kickstart's servers table.
local servers = { 'verible', 'vhdl_ls' }

require('mason-tool-installer').setup {
  ensure_installed = servers,
}

for _, name in ipairs(servers) do
  vim.lsp.config(name, {})
  vim.lsp.enable(name)
end
