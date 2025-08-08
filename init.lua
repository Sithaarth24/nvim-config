require 'custom.set'
require 'lazy_setup'
require 'custom.keymaps'


-- [[ basic autocommands ]]
--  see `:help lua-guide-autocommands`

-- highlight when yanking (copying) text
--  try it with `yap` in normal mode
--  see `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('textyankpost', {
  desc = 'highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- vim.api.nvim_create_autocmd('bufenter', {
--   pattern = 'neo-tree*',
--   callback = function()
--     if vim.bo.filetype == 'neo-tree' then
--       vim.opt_local.statusline = ''
--     end
--   end,
-- })
