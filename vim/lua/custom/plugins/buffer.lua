vim.keymap.set('n', '<leader>bd', '<Cmd>bd<CR>')
vim.keymap.set('n', '<S-h>', '<Cmd>BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<S-l>', '<Cmd>BufferLineCycleNext<CR>')

return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup {}
    end,
  },
}
