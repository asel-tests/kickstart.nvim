-- C/C++ indent: disable guess-indent + treesitter indent, use fixed widths / cinoptions.

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'cpp', 'c', 'h', 'hpp' },
  callback = function()
    vim.b.guess_indent_enabled = false
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 8
    vim.bo.softtabstop = 4
    vim.bo.expandtab = true
    -- New kickstart treesitter sets indentexpr; clear it for cpp/c like before.
    vim.bo.indentexpr = ''
  end,
})
