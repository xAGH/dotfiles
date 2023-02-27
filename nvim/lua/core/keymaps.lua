-- Function to make easier create keymaps
local function map(mode, keymap, action, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, keymap, action, options)
end

-- Mapping leader as <Space>
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Ctrl-Backspace as delete cursor word 
map('i', '<C-BS>', '<Esc>ciw') 

-- Disabled keys
-- map('', '<up>', '<nop>')
-- map('', '<down>', '<nop>')
-- map('', '<left>', '<nop>')
-- map('', '<right>', '<nop>')
map('n', 'q', '<nop>')
map('n', 'Q', '<nop>')

-- Esc with kk 
map('i', 'kk', '<Esc>')

-- Move selected cursor to up or down
map('v', 'J', ':m ">+1<CR>gv=gv')
map('v', 'K', ':m ">-2<CR>gv=gv')

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Close all windows and exit from Neovim with <leader> and q
map('n', '<leader>q', ':wqall<CR>')

-- Move around splits using Ctrl + movement keys
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Clipboard
map('n', '<F2>', ':set invpaste paste?<CR>')

-- Telescope 
map('n', '<leader>p', ':Telescope find_files<CR>')

-- Nvim Tree
map('n', '<leader>b', ':NvimTreeToggle<CR>')
map('n', '<leader>v', ':NvimTreeFocus<CR>')

-- Replace selected word
map("n", "<leader>g", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Hide highlighting
map('n','<leader>nh',':noh<CR>')

-- Tabs
map('n', '<leader>t', ':tabnew ')

local keymaps = {}
table.insert(keymaps, map)
return keymaps
