return {
  {
    'tanvirtin/monokai.nvim',
    -- priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('monokai').setup {}
    end,
  },

  {
    'polirritmico/monokai-nightasty.nvim',
  },
  {
    'rose-pine/neovim',
  },
  {
    'folke/tokyonight.nvim',
  },
  {
    'catppuccin/nvim',
  },
  {
    'rebelot/kanagawa.nvim',
  },
  {
    'sainnhe/gruvbox-material',
  },
}
