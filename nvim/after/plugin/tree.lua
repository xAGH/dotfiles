-- Safely import
local tree = vim.g.ensure_installed('nvim-tree')
if not tree then return end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Settings
tree.setup({
    renderer = {
        icons = {
            glyphs = {
                folder = {
                    arrow_closed = "",
                    arrow_open = "",
                },
            },
        },
    },
    view = {
        hide_root_folder = true
    },
    actions = {
        open_file = {
            window_picker = {
                enable = false,
            },
        },
    },
})
