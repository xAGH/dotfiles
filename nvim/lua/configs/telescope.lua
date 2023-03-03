-- Safely import
local telescope = vim.g.ensure_installed('telescope')
if not telescope then return end

-- Setup
telescope.setup {
    defaults = {
        file_ignore_patterns = {
            'node_modules'
        },
    },
}
