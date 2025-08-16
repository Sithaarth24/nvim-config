function ColorMyPencils(color)
  color = color or 'monokai'
  vim.cmd.colorscheme(color)
  vim.cmd [[
  	highlight LineNr guifg=#444445 guibg=NONE
	highlight CursorLineNr guifg=#f27a1d gui=bold
  	highlight GitSignsCurrentLineBlame guifg=#7E8E9F gui=italic
  ]]

  vim.api.nvim_set_hl(0, 'Normal', { bg = '#121217' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#121217' })
  vim.api.nvim_set_hl(0, 'cursorLine', { bg = '#121217' })
  vim.api.nvim_set_hl(0, 'MiniStatuslineModeNormal', { fg = '#272822', bg = '#7b9d1f', bold = true })
  vim.api.nvim_set_hl(0, 'MiniStatuslineModeInsert', { fg = '#272822', bg = '#4fa7c2', bold = true })
  vim.api.nvim_set_hl(0, 'MiniStatuslineModeVisual', { fg = '#272822', bg = '#d47d1c', bold = true })
  vim.api.nvim_set_hl(0, 'MiniStatuslineModeReplace', { fg = '#272822', bg = '#c03c63', bold = true })
  vim.api.nvim_set_hl(0, 'MiniStatuslineInactive', { fg = '#d0d0d0', bg = '#3e3d32' })
  vim.api.nvim_set_hl(0, 'MiniStatuslineFilename', { fg = '#d0d0d0', bg = '#272822' })
  vim.api.nvim_set_hl(0, 'MiniStatuslineModeCommand', { fg = '#272822', bg = '#af85ff', bold = true })
  vim.api.nvim_set_hl(0, 'MiniStatuslineFileinfo', { fg = '#d0d0d0', bg = '#272822' })
end

ColorMyPencils()
