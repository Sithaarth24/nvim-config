return {
  'mluders/comfy-line-numbers.nvim',
  event = 'VeryLazy',
  opts = {
    always_recompute = false, -- Set true if you want it on every CursorMoved
    min_ratio = 0.1, -- Minimum line height ratio (relative to total)
    max_ratio = 1.0, -- Maximum line height ratio
    min_distance = 5, -- Minimum distance for relative number to show
  },
  config = function(_, opts)
    require('comfy-line-numbers').setup(opts)
  end,
}
