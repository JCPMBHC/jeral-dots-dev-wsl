vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- Activar el corrector ortográfico
opt.spell = true
opt.spelllang = "es,en"

opt.relativenumber = true
opt.number = true

-- tabs & identation
opt.tabstop = 2 -- 2 spases for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line 

opt.wrap = true

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assume you want case-sensitive

opt.cursorline = true

-- turn on termguicolor for tokyonight colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" --colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" --show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizzontal window to the bottom

-- turn off swapfile
opt.swapfile = false

opt.backspace = { "start", "eol", "indent" }
opt.path:append({ "**" })
opt.wildignore:append({ "*/node_modules/*" })

-- Code Folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldcolumn = "0"
-- vim.opt.foldtext = "" --number lines
vim.opt.foldlevel = 99
-- vim.opt.foldlevelstart = 1 --init on open file
vim.opt.foldnestmax = 4