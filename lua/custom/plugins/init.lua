vim.o.autoindent = true
vim.o.smartindent = true

vim.cmd [[highlight WinSeparator guifg=black guibg=NONE]]

-- append namespaces in cpp
vim.opt.cinoptions:append 'Ns'

return {
  require 'custom.plugins.nvim-tree',
  require 'custom.plugins.nvim-autopairs',
}
