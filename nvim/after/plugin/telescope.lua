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
    extensions = {
        file_bwoser = {
            theme = 'ivy',
            hijack_netrw = true,
        }
    }
}

require("telescope").load_extension "file_browser"
