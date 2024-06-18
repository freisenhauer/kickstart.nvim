local plugins = {
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  'pocco81/auto-save.nvim',
  { 'numToStr/Comment.nvim', opts = {} },
  'github/copilot.vim',
  'vim-test/vim-test',

  require 'custom.plugins.nerd-tree',
  require 'custom.plugins.typescript-tools',
  require 'custom.plugins.git-signs',
  require 'custom.plugins.which-key',
  require 'custom.plugins.telescope',
  require 'custom.plugins.lsp',
  require 'custom.plugins.formatting',
  require 'custom.plugins.autocompletion',
  require 'custom.plugins.theme',
  require 'custom.plugins.todo-comments',
  require 'custom.plugins.mini',
  require 'custom.plugins.tree-sitter',
}

return plugins
