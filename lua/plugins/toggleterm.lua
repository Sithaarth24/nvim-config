return {
  {
    'akinsho/toggleterm.nvim',
    config = function()
      require('toggleterm').setup {
        size = 20,
        float_opts = {
          border = 'curved',
          title_pos = 'center',
        },
        on_open = function(term)
          -- Add a title to the floating window
          vim.api.nvim_win_set_config(term.window, {
            border = {
              { '┌', 'FloatBorder' },
              { '─', 'FloatBorder' },
              { '┐', 'FloatBorder' },
              { '│', 'FloatBorder' },
              { '┘', 'FloatBorder' },
              { '─', 'FloatBorder' },
              { '└', 'FloatBorder' },
              { '│', 'FloatBorder' },
            },
            title = ' Terminal ' .. term.id .. ' ',
            title_pos = 'center',
          })
        end,
      }
    end,
    keys = {
      {
        '<leader>o',
        ':ToggleTerm direction=float<cr>',
        desc = 'Toggle floating terminal',
      },
      {
        '<leader>1',
        ':ToggleTerm 1 direction=float<cr>',
      },
      {
        '<leader>2',
        ':ToggleTerm 2 direction=float<cr>',
      },
      {
        '<leader>3',
        ':ToggleTerm 3 direction=float<cr>',
      },
      {
        '<leader>4',
        ':ToggleTerm 4 direction=float<cr>',
      },
      {
        '<leader>5',
        ':ToggleTerm 5 direction=float<cr>',
      },
    },
  },
}
