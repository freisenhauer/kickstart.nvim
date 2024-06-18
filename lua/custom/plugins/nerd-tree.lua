return {
  'preservim/nerdtree',
  config = function()
    vim.keymap.set('n', '<leader>f', ':NERDTreeFocus<CR>', { desc = '[T]oggle [f]ileview with NERDTree' })
  end,
}
