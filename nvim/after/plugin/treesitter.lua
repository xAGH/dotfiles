-- Safely import
local plugin = 'nvim-treesitter.configs'
local setup, treesitter = pcall(require, plugin)
if not setup then
    vim.g.noti(plugin)
    return
end

-- Setup
treesitter.setup {
    ensure_installed = vim.g.languages,
    sync_install = true,
    auto_install = true,
    ignore_install = {  },
    highlight = {
        enable = true,
    },
}
