function ColorMyPencils(color)
  color = color or 'gruvbox-material'
  vim.cmd.colorscheme(color)
  vim.cmd [[
  	highlight LineNr guifg=#444445 guibg=NONE
  	highlight CursorLineNr guifg=#f27a1d gui=bold
  	highlight GitSignsCurrentLineBlame guifg=#7E8E9F gui=italic
  ]]

  -- Base
  vim.api.nvim_set_hl(0, 'Normal', { bg = '#212121' })
  vim.api.nvim_set_hl(0, 'NormalNC', { bg = '#212121' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#212121' })
  vim.api.nvim_set_hl(0, 'CursorLine', { bg = '#212121' })

  -- Floating-windows
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#212121' })
  vim.api.nvim_set_hl(0, 'FloatBorder', { bg = '#212121' })
  vim.api.nvim_set_hl(0, 'NeoTreeFloatBorder', { fg = '#928374', bg = '#282828' }) -- gray border
  -- vim.api.nvim_set_hl(0, 'NeoTreeFloatTitle', { fg = '#fabd2f', bg = '#282828', bold = true }) -- yellow title
  -- vim.api.nvim_set_hl(0, 'NeoTreeFloatNormal', { fg = '#d4be98', bg = '#282828' }) -- main text
  -- vim.api.nvim_set_hl(0, 'NeoTreeNormal', { fg = '#d4be98', bg = '#282828' }) -- fallback
  -- vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { fg = '#a89984', bg = '#282828' }) -- inactive

  vim.api.nvim_set_hl(0, 'MiniStatuslineModeNormal', { fg = '#282828', bg = '#98971a', bold = true }) -- green
  vim.api.nvim_set_hl(0, 'MiniStatuslineModeInsert', { fg = '#282828', bg = '#458588', bold = true }) -- blue
  vim.api.nvim_set_hl(0, 'MiniStatuslineModeVisual', { fg = '#282828', bg = '#d65d0e', bold = true }) -- orange
  vim.api.nvim_set_hl(0, 'MiniStatuslineModeReplace', { fg = '#282828', bg = '#cc241d', bold = true }) -- red
  vim.api.nvim_set_hl(0, 'MiniStatuslineModeCommand', { fg = '#282828', bg = '#b16286', bold = true }) -- purple

  vim.api.nvim_set_hl(0, 'MiniStatuslineInactive', { fg = '#ebdbb2', bg = '#3c3836' }) -- muted gray
  vim.api.nvim_set_hl(0, 'MiniStatuslineFilename', { fg = '#ebdbb2', bg = '#282828' }) -- base dark
  vim.api.nvim_set_hl(0, 'MiniStatuslineFileinfo', { fg = '#ebdbb2', bg = '#282828' }) -- base dark
  vim.api.nvim_set_hl(0, 'MatchParen', {
    fg = '#FD971F',
    bg = 'NONE',
    bold = true,
  })
end

-- local function set_vscode_diff_highlights()
--   -- Define your preferred VS Code-like colors here
--   -- Example dark, desaturated colors:
--   local diff_colors = {
--     DiffAdd = { bg = '#344933' }, -- Dark Green for added lines
--     DiffChange = { bg = '#3a384e' }, -- Dark Blue/Purple for changed lines
--     DiffDelete = { bg = '#331A1A' }, -- Dark Red for deleted lines
--     -- For word-level diff highlight (more noticeable than the line background)
--     DiffText = { bg = '#52343a' },
--   }
--
--   for group, props in pairs(diff_colors) do
--     vim.api.nvim_set_hl(0, group, props)
--   end
-- end
--
-- -- Re-apply the highlights every time a colorscheme is loaded
-- vim.api.nvim_create_autocmd('ColorScheme', {
--   group = vim.api.nvim_create_augroup('CustomDiffHighlights', { clear = true }),
--   callback = set_vscode_diff_highlights,
--   desc = 'Set custom diff highlights to look like VS Code',
-- })
--
ColorMyPencils()
