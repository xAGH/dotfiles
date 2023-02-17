vim.keymap.set({"n", "i", "v"}, "jk", "<Esc>")
vim.keymap.set({"i"}, "<C-BS>", "<Esc>ciw")

-- Telescope 
vim.api.nvim_set_keymap(
    "n",
    "<C-p>",
    ":Telescope git_files<CR>",
    { noremap = true }
)

vim.api.nvim_set_keymap(
    "n",
    "<C-e>",
    ":NvimTreeToggle<CR>",
    { noremap = true }
)
