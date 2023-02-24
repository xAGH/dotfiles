-- Message to not installed plugins
vim.g.noti = function(plugin)
    print(plugin .. ' is not installed')
end

-- Language to install in LSP
vim.g.languages = {
    "python",
    "java",
    "javascript",
    "typescript",
    "lua",
    "vim",
    "help"
}

-- Linters to install in LSP
vim.g.linters = {
    "prettier", -- ts/js formatter
    "stylua", -- lua formatter
    "eslint_d", -- ts/js linter
}
