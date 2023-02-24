-- Safely import
local plugin = 'indent_blankline'
local setup, indent_blankline = pcall(require, plugin)
if not setup then
    vim.g.noti(plugin)
    return
end

vim.opt.list = true
vim.opt.listchars:append "eol:↴"

indent_blankline.setup {
    show_current_context = true,
    show_current_context_start = true,
    show_end_of_line = true,
}
