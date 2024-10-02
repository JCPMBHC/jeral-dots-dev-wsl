return {
  'mg979/vim-visual-multi',
  branch = 'master',
  config = function()
      vim.g.VM_maps = {
          ['Find Under']         = '<C-n>',
          ['Find Subword Under'] = '<C-n>',
          ['Select All']         = '<C-d>',
          ['Skip Region']        = '<C-x>',
          ['Remove Region']      = '<C-p>',
          ['Add Cursor Down']    = '<C-D>',
          ['Add Cursor Up']      = '<C-U>',
      }
      -- Opciones adicionales de colores
      vim.cmd([[
        hi VM_Cursor guibg=#5f00ff guifg=#ffffff
        hi VM_Extend guibg=#ff00ff guifg=#ffffff
        hi VM_Mono guibg=#ffaf00 guifg=#ffffff
      ]])
  end,
}