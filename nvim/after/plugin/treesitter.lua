-- Safely import
local treesitter = vim.g.ensure_installed('nvim-treesitter.configs')
if not treesitter then return end

-- Setup
treesitter.setup {
    auto_tag = {
        enabled = true,
    },
    ensure_installed = {
        'comment',
        'css',
        'dockerfile',
        'gitcommit',
        'gitignore',
        'html',
        'java',
        'javascript',
        'json',
        'markdown',
        'python',
        'regex',
        'scss',
        'sql',
        'typescript'
    },
    sync_install = true,
    auto_install = true,
    ignore_install = {  },
    highlight = {
        enable = true,
    },
}


