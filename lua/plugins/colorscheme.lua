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

      -- Definir los colores de las ventanas de autocompletado (cmp) y LSP
      -- vim.api.nvim_set_hl(0, "CmpPmenu", { bg = "#1e1e2e" }) -- Fondo para el menú de cmp
      -- vim.api.nvim_set_hl(0, "CmpPmenuBorder", { bg = "#1e1e2e", fg = "#555555" }) -- Borde para cmp
      -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e1e2e" }) -- Fondo para ventanas flotantes de LSP
      -- vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#1e1e2e", fg = "#555555" }) -- Borde para ventanas flotantes de LSP
      -- vim.api.nvim_set_hl(0, "Pmenu", { bg = "#1e1e2e" }) -- Fondo para el menú emergente
      vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#202020" }) -- Fondo para el ítem seleccionado en el menú
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
