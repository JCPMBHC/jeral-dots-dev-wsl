return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	 config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.startify") --dashboard / startify

    -- Set header
    dashboard.section.header.val = {
			"                                                     ",
			"                                                     ",
      "                                                     ",
      "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      "                                                     ",
      "                                                     ",
    }

    -- Set menu - if dashborad enabled buttons else if startify desabled buttons
    -- dashboard.section.buttons.val = {
    --   dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
    --   dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>Neotree filesystem reveal left<CR>"),
    --   dashboard.button("SPC ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
    --   dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
    --   -- dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
    --   dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
    -- }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer - if dashborad enabled else if startify desabled 
    -- vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])s
  end,
}