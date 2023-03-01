-- Safely import
local comment = vim.g.ensure_installed('Comment')
if not comment then return end

comment.setup()
