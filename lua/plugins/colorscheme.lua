return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        color_overrides = {
          all = {},
          latte = {},
          frappe = {},
          macchiato = {},
          mocha = {
            --base = "#15141f",
          },
        },
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
        }
      })

      -- vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
    config = function()
      require("onedarkpro").setup({
        options = {
          cursorline = true,
          transparency = true
        },
        colors = {
          -- dark = { bg = "#23272e" }, -- yellow
        }
      })
       vim.cmd("colorscheme onedark_dark")
    end,
  },
  { 
    "bluz71/vim-moonfly-colors", 
    name = "moonfly", 
    lazy = false, 
    priority = 1000,
    config = function()
      vim.g.moonflyTransparent = true
      -- vim.g.moonflyNormalFloat = true
      vim.g.moonflyItalics = false
      -- vim.g.moonflyTerminalColors = false
      vim.g.moonflyUnderlineMatchParen = true
      vim.g.moonflyVirtualTextColor = true
      -- vim.g.moonflyWinSeparator = 2
      -- vim.cmd([[colorscheme moonfly]])
    end,
  }
}
