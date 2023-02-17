local opt = {
    timeoutlen=239,
    number=true,
    tabstop=4,
    shiftwidth=4,
    expandtab=true,
    termguicolors=true
}

for key, value in pairs(opt) do
    vim.o[key] = value
end
