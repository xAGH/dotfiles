local term = vim.g.ensure_installed('betterTerm')
if not term then return end

term.setup({
    size = 7
})

-- toggle firts term
vim.keymap.set({'n', 't'}, '<leader>t', term.open, { desc = 'Open terminal'})
-- Select term focus
vim.keymap.set({'n', 't'}, '<leader>tt', term.select, { desc = 'Select terminal'})
-- Create new term
local current = 2
vim.keymap.set(
    {'n', 't'}, '<leader>tn',
    function()
        term.open(current)
        current = current + 1
    end,
    { desc = 'New terminal'}
)

vim.keymap.set("n", "<leader>e", function()
  require("betterTerm").send(require("code_runner.commands").get_filetype_command(), 1, { clean = false, interrupt = true })
end, { desc = "Excute File"})
