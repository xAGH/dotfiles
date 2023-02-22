-- Function to set custom colorscheme
local function set_color(color)
    color = color or "onedark"
    vim.cmd('colorscheme ' .. color)

--    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
--    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

set_color()
