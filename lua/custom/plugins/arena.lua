return {
  'dzfrias/arena.nvim',
  priority = 900,
  event = 'BufWinEnter',
  -- Calls `.setup()` automatically
  keys = {
    {
      '<leader>q',
      function()
        require('arena').open()
      end,
      mode = 'n',
      desc = '[Q]uick switch buffer',
    },
  },
  config = true,
}
