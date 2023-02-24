-- Safely import
local plugin = 'which-key'
local setup, whichkey = pcall(require, plugin)
if not setup then
    vim.g.noti(plugin)
    return
end

whichkey.setup()
