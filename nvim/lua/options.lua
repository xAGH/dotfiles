vim.g.mapleader="<space>"

local opt = {
    timeoutlen=239,
    number=true,
    tabstop=4,
    shiftwidth=4,
    expandtab=true,
    termguicolors=true
}

vim.cmd[[ colorscheme onedark ]]

for key, value in pairs(opt) do
    vim.o[key] = value
end
