-- return {
--   'goolord/alpha-nvim',
--   -- dependencies = { 'echasnovski/mini.icons' },
--   dependencies = { 'nvim-tree/nvim-web-devicons' },
--   config = function()
--     local startify = require 'alpha.themes.startify'
--     -- available: devicons, mini, default is mini
--     -- if provider not loaded and enabled is true, it will try to use another provider
--     startify.file_icons.provider = 'devicons'
--     require('alpha').setup(startify.config)
--   end,
-- }

return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    -- Header
    dashboard.section.header.val = {
      '                                                     ',
      '  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ',
      '  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ',
      '  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ',
      '  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ',
      '  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ',
      '  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ',
      '                                                     ',
    }

    -- vim.api.nvim_set_hl(0, 'AlphaHeader', { fg = '#66d9ef', bold = true })
    -- dashboard.section.header.opts.hl = 'AlphaHeader'

    -- Layout (center it)
    dashboard.config.layout = {
      { type = 'padding', val = 10 }, -- top padding (increase/decrease to adjust vertical centering)
      dashboard.section.header,
      { type = 'padding', val = 2 },
      dashboard.section.buttons,
      { type = 'padding', val = 200 },
      dashboard.section.footer,
    }

    dashboard.section.buttons.val = {
      dashboard.button('e', '  > New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('f', '󰮗  > Find file', ':cd $HOME/Workspace | Telescope find_files<CR>'),
      dashboard.button('r', '  > Recent', ':Telescope oldfiles<CR>'),
      dashboard.button('s', '  > Settings', ':e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>'),
      dashboard.button('q', '  > Quit NVIM', ':qa<CR>'),
    }

    -- (Optional) Fortune footer if installed
    -- local fortune = require("alpha.fortune")
    -- dashboard.section.footer.val = fortune()

    alpha.setup(dashboard.opts)

    -- Disable folding in Alpha buffer
    vim.cmd [[
      autocmd FileType alpha setlocal nofoldenable
    ]]
  end,
}

-- return {
--   'eoh-bse/minintro.nvim',
--   config = true,
--   lazy = false,
-- }
-- return {
--   'goolord/alpha-nvim',
--   event = 'VimEnter',
--   config = function()
--     local alpha = require 'alpha'
--     local dashboard = require 'alpha.themes.dashboard'
--
--     _Gopts = {
--       position = 'center',
--       hl = 'Type',
--       wrap = 'overflow',
--     }
--
--     local function get_all_files_in_dir(dir)
--       local files = {}
--       local scan = vim.fn.globpath(dir, '**/*.lua', true, true)
--       for _, file in ipairs(scan) do
--         table.insert(files, file)
--       end
--       return files
--     end
--
--     local function load_random_header()
--       math.randomseed(os.time())
--       local header_folder = vim.fn.stdpath 'config' .. '/lua/alpha_images/'
--       local files = get_all_files_in_dir(header_folder)
--
--       local random_file = files[math.random(#files)]
--       local relative_path = random_file:sub(#header_folder + 1)
--       local module_name = 'alpha_images.' .. relative_path:gsub('/', '.'):gsub('\\', '.'):gsub('%.lua$', '')
--
--       package.loaded[module_name] = nil
--
--       local ok, module = pcall(require, module_name)
--       if ok and module.header then
--         return module.header
--       else
--         return nil
--       end
--     end
--
--     local function change_header()
--       local new_header = load_random_header()
--       if new_header then
--         dashboard.config.layout[2] = new_header
--         vim.cmd 'AlphaRedraw'
--       else
--         print 'No images inside header_img folder.'
--       end
--     end
--
--     local header = load_random_header()
--     if header then
--       dashboard.config.layout[2] = header
--     else
--       print 'No images inside header_img folder.'
--     end
--
--     -- Buttons (obsidian-related buttons removed)
--     dashboard.section.buttons.val = {
--       dashboard.button('w', '🖌️ Change header image', function()
--         change_header()
--       end),
--       dashboard.button('c', '🛠️ Settings', ':e $HOME/.config/nvim/init.lua<CR>'),
--       dashboard.button('r', '⌛ Recent files', ':Telescope oldfiles <CR>'),
--       dashboard.button('t', '🖮  Practice typing with Typr ', ':Typr<CR>'),
--       dashboard.button('u', '🔌 Update plugins', '<cmd>Lazy update<CR>'),
--     }
--
--     -- Layout: header + buttons + footer
--     dashboard.config.layout = {
--       { type = 'padding', val = 3 },
--       header,
--       { type = 'padding', val = 2 },
--       {
--         type = 'group',
--         val = {
--           {
--             type = 'group',
--             val = {
--               {
--                 type = 'group',
--                 val = dashboard.section.buttons.val,
--                 opts = { spacing = 1 },
--               },
--             },
--             opts = { spacing = 1 },
--           },
--         },
--         opts = {
--           layout = 'horizontal',
--         },
--       },
--       { type = 'padding', val = 2 },
--       dashboard.section.footer,
--     }
--
--     vim.api.nvim_create_autocmd('User', {
--       pattern = 'VimStarted',
--       desc = 'Add Alpha dashboard footer',
--       once = true,
--       callback = function()
--         local stats = require('lazy').stats()
--         local ms = math.floor(stats.startuptime * 100 + 0.5) / 100
--         dashboard.section.footer.val = { ' ', ' ', ' ', ' Loaded ' .. stats.count .. ' plugins  in ' .. ms .. ' ms ' }
--         dashboard.section.header.opts.hl = 'DashboardFooter'
--         pcall(vim.cmd.AlphaRedraw)
--       end,
--     })
--
--     dashboard.opts.opts.noautocmd = true
--     alpha.setup(dashboard.opts)
--   end,
-- }
