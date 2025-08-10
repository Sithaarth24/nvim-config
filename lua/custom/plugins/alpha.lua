-- minimal alpha config to show only a banner art
return {
  'goolord/alpha-nvim',
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    -- load your art (put the LightningNvim-converted file at: lua/art/arcane1.lua)
    local ok, header_art = pcall(require, 'arcane_lol.arcane_ekko')
    if not ok then
      vim.notify('Could not load art.arcane1: ' .. tostring(header_art), vim.log.levels.ERROR)
      return
    end

    -- safety: require must return a list of strings (array part). If it's a dict or empty, fallback.
    if type(header_art) ~= 'table' or #header_art == 0 then
      -- try to coerce numeric entries if the file returned a table with keys
      local coerced = {}
      for k, v in pairs(header_art) do
        if type(k) == 'number' and type(v) == 'string' then
          coerced[k] = v
        end
      end
      if #coerced > 0 then
        header_art = coerced
      else
        -- fallback: small default single-line header
        header_art = { 'Neovim' }
      end
    end

    -- set only the header (no buttons/footer)
    dashboard.section.header.val = header_art
    dashboard.section.header.opts = { position = 'center', hl = 'String' }

    dashboard.section.buttons.val = {} -- remove buttons
    dashboard.section.footer.val = {} -- remove footer

    -- optional: tweak layout spacing
    dashboard.config.layout = {
      { type = 'padding', val = 1 },
      dashboard.section.header,
      { type = 'padding', val = 1 },
    }

    alpha.setup(dashboard.config)
  end,
}
