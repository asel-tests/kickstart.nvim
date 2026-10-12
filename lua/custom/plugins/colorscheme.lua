-- Override kickstart's tokyonight after it loads (custom.plugins runs last).
vim.pack.add { 'https://github.com/asel-tests/cyberdream.nvim' }

---@diagnostic disable-next-line: missing-fields
require('cyberdream').setup {
  styles = {
    comments = { italic = false },
  },
}

vim.cmd.colorscheme 'cyberdream-light'
