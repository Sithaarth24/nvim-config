return {
  'yetone/avante.nvim',
  build = vim.fn.has 'win32' ~= 0 and 'powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false' or 'make',
  event = 'VeryLazy',
  version = false,
  ---@module 'avante'
  ---@type avante.Config
  opts = {
    instructions_file = 'avante.md',
    provider = 'groq', -- 👈 default provider
    providers = {
      groq = {
        __inherited_from = 'openai', -- 👈 use OpenAI-style API calls
        api_key_name = 'GROQ_API_KEY', -- 👈 looks up from your env var
        endpoint = 'https://api.groq.com/openai/v1/',
        model = 'llama-3.3-70b-versatile', -- 👈 strongest free Groq model
        max_tokens = 1024,
      },
    },
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    'echasnovski/mini.pick',
    'nvim-telescope/telescope.nvim',
    'hrsh7th/nvim-cmp',
    'ibhagwan/fzf-lua',
    'stevearc/dressing.nvim',
    'folke/snacks.nvim',
    'nvim-tree/nvim-web-devicons',
    'zbirenbaum/copilot.lua',
    {
      'HakonHarnes/img-clip.nvim',
      event = 'VeryLazy',
      opts = {
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = { insert_mode = true },
          use_absolute_path = true,
        },
      },
    },
    {
      'MeanderingProgrammer/render-markdown.nvim',
      opts = { file_types = { 'markdown', 'Avante' } },
      ft = { 'markdown', 'Avante' },
    },
  },
}
