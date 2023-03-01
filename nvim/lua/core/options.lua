local opt = vim.opt

-- Colorscheme
vim.cmd('colorscheme onedark')

-- Line numbers
opt.number = true
opt.relativenumber = true
opt.cursorline = true

-- Tabs and identation 
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true 

-- Line Wrapping
opt.wrap = false

-- Search settings
opt.ignorecase = true
opt.smartcase = true

-- Appareance
opt.termguicolors = true

-- Clipboard
opt.clipboard:append("unnamedplus")
opt.pastetoggle = "<F2>"

-- History
opt.undofile = true
opt.timeoutlen = 239

-- Windows
opt.splitright = true
opt.splitbelow = true

