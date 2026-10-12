vim.pack.add {
  { src = 'https://github.com/akinsho/toggleterm.nvim', version = vim.version.range '*' },
}

require('toggleterm').setup()
vim.keymap.set('n', '<C-t>', '<cmd>ToggleTerm<CR>', { noremap = true, silent = true })
