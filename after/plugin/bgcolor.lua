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

  -- -- Telescope
  -- vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = '#1a1a22' })
  -- vim.api.nvim_set_hl(0, 'TelescopeBorder', { bg = '#1a1a22' })
  -- vim.api.nvim_set_hl(0, 'TelescopePromptNormal', { bg = '#1a1a22' })
  -- vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { bg = '#1a1a22' })
  --
  -- Neo-tree
  -- vim.api.nvim_set_hl(0, 'NeoTreeNormal', { bg = '#212121' })
  -- vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { bg = '#212121' })
  -- vim.api.nvim_set_hl(0, 'NeoTreeFloatBorder', { bg = '#212121' })

  -- Floating-windows
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#212121' })
  vim.api.nvim_set_hl(0, 'FloatBorder', { bg = '#212121' })

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

-- vim.cmd.colorscheme 'kanagawa-dragon'
ColorMyPencils()
