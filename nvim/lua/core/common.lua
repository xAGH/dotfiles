local M = {}

M.languages = {
    "python",
    "java",
    "javascript",
    "typescript",
    "lua",
    "vim",
    "help"
}
M.linters = {
    "prettier", -- ts/js formatter
    "stylua", -- lua formatter
    "eslint_d", -- ts/js linter
},

return M
