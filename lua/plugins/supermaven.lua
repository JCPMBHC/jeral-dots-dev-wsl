return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup({
      keymaps = {
        accept_suggestion = "<Tab>",
        clear_suggestion = "<C-]>",
        accept_word = "<C-j>",
      },
      ignore_filetypes = { cpp = true },  -- Ignorar ciertos tipos de archivo
      -- color = {
      --   suggestion_color = "#ffffff",
      --   cterm = 244,
      -- },
      -- disable_inline_completion = false, -- Para usarlo con nvim-cmp_autopairs
    })
  end,
}