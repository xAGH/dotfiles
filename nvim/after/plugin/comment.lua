-- Safely import
local plugin = 'Comment'
local setup, comment = pcall(require, plugin)
if not setup then
    vim.g.noti(plugin)
    return
end

comment.setup()
