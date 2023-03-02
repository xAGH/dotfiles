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

-- Esc with kk
map('i', 'kk', '<Esc>')

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Close all windows and exit from Neovim with <leader> and q
map('n', '<leader>q', ':wq<CR>')

-- Move around splits using Ctrl + movement keys
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Telescope
map('n', '<leader>p', ':Telescope find_files<CR>')

-- Nvim Tree
map('n', '<leader>b', ':NvimTreeToggle<CR>')
map('n', '<leader>v', ':NvimTreeFocus<CR>')

-- Replace selected word
map("n", "<leader>g", [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])

-- Hide highlighting
map('n', '<leader>nh', ':noh<CR>')

-- Tabs
map('n', '<leader>t', ':tabnew ')

-- Lsp keymaps
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { noremap = true, silent = true })
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { noremap = true, silent = true })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { noremap = true, silent = true })
vim.api.nvim_create_autocmd('BufWritePre', {
    callback = function()
        vim.lsp.buf.format { async = true }
    end
})
