local is_installed = vim.g.ensure_installed

-- Sfely imports
local autopairs = is_installed('nvim-autopairs')
local cmp_autopairs = is_installed('nvim-autopairs.completion.cmp')
local cmp = is_installed('cmp')

if not (autopairs and cmp_autopairs and cmp) then return end

-- Config
autopairs.setup({
    check_ts = true, -- enable treesitter
    ts_config = {},
})

-- make autopairs and completion work together
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
