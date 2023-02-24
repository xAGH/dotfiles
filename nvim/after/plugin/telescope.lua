-- Safely import
local plugin = 'telescope'
local setup, telescope = pcall(require, plugin)
if not setup then
    print(plugin .. vim.g.noti)
    return
end

-- Setup
telescope.setup{
    defaults = {
        file_ignore_patterns = {
            'node_modules'
        }
    }
}
