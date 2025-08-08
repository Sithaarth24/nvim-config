-- move stuff around
vim.keymap.set('n', '<D-j>', ':m .+1<CR>==')
vim.keymap.set('n', '<D-k>', ':m .-2<CR>==')
vim.keymap.set('v', '<D-k>', ":m '<-2<CR>gv=gv")
vim.keymap.set('v', '<D-j>', ":m '>+1<CR>gv=gv")

-- makes my life easier
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>;', ':w<CR>')
vim.keymap.set('n', 'U', '<C-r>', { desc = 'redo' })
vim.keymap.set('n', '<leader>k', '<C-i>', { desc = 'cursor front' })
vim.keymap.set('n', '<leader>j', '<C-o>', { desc = 'cursor back' })
vim.keymap.set('n', '<leader>ca', 'ggVG"+y<C-o><Esc>', { desc = 'copy buffer to clipboard' })
vim.keymap.set('n', '<leader>sa', 'ggVG"', { desc = 'copy buffer to clipboard' })
vim.keymap.set({ 'v', 'n' }, '<leader>y', '"+y', { desc = '[Y]opy...get it 😁' })
vim.keymap.set({ 'v', 'n' }, '<leader>tw', function()
  vim.opt.wrap = not vim.opt.wrap:get()
end, { desc = '[T]oggle line [W]rap' })

-- Diagnostic keymaps
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '<leader>D', vim.diagnostic.setloclist, { desc = 'Open diagnostic float' })

-- lazy...idk, came with kickstart
-- vim.keymap.set('n', '<leader>ll', '<cmd>Lazy<CR>', { desc = '[L]azy UI' })
-- vim.keymap.set('n', '<leader>ls', '<cmd>Lazy sync<CR>', { desc = 'Lazy [S]ync' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
-- NOTE: btw who uses terminal inside nvim....? its slower anyway
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
-- control key is for babies...(its hard to use contrl key in mac 😭)
vim.keymap.set('n', '<leader>wh', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<leader>wl', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<leader>wj', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<leader>wk', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<leader>wH', '<C-w><C-H>', { desc = 'Move focus to the left most window' })
vim.keymap.set('n', '<leader>wL', '<C-w><C-L>', { desc = 'Move focus to the right most window' })
vim.keymap.set('n', '<leader>wJ', '<C-w><C-J>', { desc = 'Move focus to the lower most window' })
vim.keymap.set('n', '<leader>wK', '<C-w><C-K>', { desc = 'Move focus to the upper most window' })
vim.keymap.set('n', '<leader>wv', '<C-w>v', { desc = 'Split window vertically' })
vim.keymap.set('n', '<leader>ws', '<C-w>s', { desc = 'Split window horizontally' })
vim.keymap.set('n', '<leader>wq', '<C-w>q', { desc = 'Quit window' })
vim.keymap.set('n', '<leader>wo', '<C-w>o', { desc = 'Quit all other windows' })
vim.keymap.set('n', '<leader>ww', '<C-w>w', { desc = 'Switch window' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes

-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

