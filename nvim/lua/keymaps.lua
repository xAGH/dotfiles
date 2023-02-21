local set = vim.keymap.set
local api_set = vim.api.nvim_set_keymap 

set({"i"}, "<C-BS>", "<Esc>ciw") -- Ctrl-Backspace as delete cursor word 

-- Telescope 
api_set(
    "n",
    "<leader>p",
    ":Telescope git_files<CR>",
{ noremap = true }
)

api_set(
    "n",
    "<leader>b",
    ":NvimTreeToggle<CR>",
    { noremap = true }
)
