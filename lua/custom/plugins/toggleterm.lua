return {
  'akinsho/toggleterm.nvim',
  version = '*',
  lazy = false,
  config = function()
    require('toggleterm').setup()
    vim.keymap.set('n', '<C-t>', '<cmd>ToggleTerm<CR>', { noremap = true, silent = true })
  end,
}
