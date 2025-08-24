require 'custom.set'
require 'lazy_setup'
require 'custom.keymaps'

-- [[ basic autocommands ]]
--  see `:help lua-guide-autocommands`

-- highlight when yanking (copying) text
--  try it with `yap` in normal mode
--  see `:help vim.hl.on_yank()`
--

vim.api.nvim_create_autocmd('textyankpost', {
  desc = 'highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.api.nvim_create_autocmd('BufWinEnter', {
  callback = function()
    vim.opt.list = false
  end,
})

-- -- CursorLine when entering a window
-- vim.api.nvim_create_autocmd({ 'WinEnter', 'BufEnter' }, {
--   callback = function()
--     vim.api.nvim_set_hl(0, 'CursorLine', { bg = '#121217' })
--   end,
-- })
--
-- -- CursorLine when leaving a window
-- vim.api.nvim_create_autocmd({ 'WinLeave' }, {
--   callback = function()
--     local hl = vim.api.nvim_get_hl(0, { name = 'NormalNC' })
--     vim.api.nvim_set_hl(0, 'CursorLine', hl)
--   end,
-- })
-- vim.api.nvim_create_autocmd('bufenter', {
--   pattern = 'neo-tree*',
--   callback = function()
--     if vim.bo.filetype == 'neo-tree' then
--       vim.opt_local.statusline = ''
--     end
--   end,
-- })
