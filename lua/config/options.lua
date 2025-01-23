-- netrw style (3 = tree)
vim.cmd("let g:netrw_liststyle = 3")

-- vim options
local opt = vim.opt

-- tabs
opt.tabstop = 3
opt.softtabstop = 3
opt.expandtab = true
opt.shiftwidth = 3
opt.autoindent = true

-- search
opt.ignorecase = true
opt.hlsearch = true
opt.incsearch = true
opt.smartcase = true

-- line numbering
opt.number = true
opt.relativenumber = true

-- mouse
opt.mouse = 'a'

-- cursorline
opt.cursorline = true

-- colors
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard (system clipboard available)
opt.clipboard:append("unnamedplus")

-- window split
opt.splitright = true
opt.splitbelow = true
