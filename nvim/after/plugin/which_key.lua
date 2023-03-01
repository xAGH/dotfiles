-- Safely import
local whichkey = vim.g.ensure_installed('which-key')
if not whichkey then return end

whichkey.setup()
