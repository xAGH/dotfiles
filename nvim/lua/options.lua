local opt = {
    timeoutlen=239,
    number=true,
    relativenumber=true,
    tabstop=4,
    shiftwidth=4,
    expandtab=true,
    termguicolors=true,
    ignorecase=true,
    smartcase=true,
    undofile = true,
}

vim.cmd[[ colorscheme onedark ]]

for key, value in pairs(opt) do
    vim.o[key] = value
end

local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
})
