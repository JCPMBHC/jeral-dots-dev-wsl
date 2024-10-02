return {
  "smjonas/inc-rename.nvim",
  cmd = "IncRename",
  -- config = true,
   config = function()
    vim.keymap.set("n", "<leader>rn", ":IncRename ")
   end,
}