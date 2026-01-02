-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
  },
  lazy = true,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      bind_to_cwd = false,
      cwd_target = 'global',
      window = {
        position = 'right',
        width = 50,
        mappings = {
          ['\\'] = 'close_window',
        },
      },
      filtered_items = {
        visible = true, -- show hidden files
        hide_dotfiles = false, -- do not hide dotfiles
        hide_gitignored = false, -- do not hide .gitignored files
      },
    },
    default_component_configs = {
      indent = {
        indent_size = 1,
      },
    },
  },
}
