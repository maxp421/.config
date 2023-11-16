return {
  "mbbill/undotree",
  event = 'LspAttach',
  config = function()
    vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
  end,
}
