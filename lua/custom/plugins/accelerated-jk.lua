return {
  'rainbowhxch/accelerated-jk.nvim',
  keys = {
    { 'j', '<Plug>(accelerated_jk_gj)', mode = 'n' },
    { 'k', '<Plug>(accelerated_jk_gk)', mode = 'n' },
  },
  config = function()
    vim.cmd [[
        nmap <silent> j <Plug>(accelerated_jk_gj)
        nmap <silent> k <Plug>(accelerated_jk_gk)
      ]]
  end,
}
