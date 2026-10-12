-- Non-plugin settings (loaded by custom.plugins init.lua).

vim.cmd [[highlight WinSeparator guifg=black guibg=NONE]]

vim.api.nvim_create_autocmd('ColorScheme', {
  callback = function()
    vim.cmd [[highlight WinSeparator guifg=black guibg=NONE]]
  end,
})

-- append namespaces in cpp
vim.opt.cinoptions:append 'Ns'

-- Diagnostics off by default; toggle with :ToggleLint
vim.diagnostic.enable(false)

vim.api.nvim_create_user_command('ToggleLint', function()
  local current_state = vim.diagnostic.is_enabled()
  vim.diagnostic.enable(not current_state)
  print('Diagnostics ' .. (current_state and 'Disabled' or 'Enabled'))
end, {})

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'systemverilog',
  callback = function()
    vim.opt_local.tabstop = 3
    vim.opt_local.shiftwidth = 3
    vim.opt_local.softtabstop = 3
    vim.opt_local.expandtab = true
  end,
})
