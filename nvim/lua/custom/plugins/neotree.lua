return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',

  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  config = function()
    require('neo-tree').setup {}
  end,
  keys = {
    {
      '<leader>e',
      function()
        require('neo-tree.command').execute { toggle = true, dir = vim.uv.cwd() }
      end,
      desc = 'Explorer NeoTree (cwd)',
    },
    {
      '<leader>ge',
      function()
        require('neo-tree.command').execute { source = 'git_status', toggle = true }
      end,
      desc = 'Git Explorer Neotree',
    },
  },
  deactivate = function()
    vim.cmd [[Neotree close]]
  end,
}
