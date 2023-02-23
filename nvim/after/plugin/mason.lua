-- Safely import
local setup, mason = pcall(require, 'mason')
if not setup then
    return
end

-- Config
mason.setup()
