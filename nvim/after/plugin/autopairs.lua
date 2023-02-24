-- import nvim-autopairs safely
local plugin = 'nvim-autopairs'
local autopairs_setup, autopairs = pcall(require, plugin)
if not autopairs_setup then
    vim.g.noti(plugin)
    return
end
-- configure autopairs
autopairs.setup({
    check_ts = true, -- enable treesitter
    ts_config = {},
})

-- import nvim-autopairs completion functionality safely
plugin = 'nvim-autopairs.completion.cmp'
local cmp_autopairs_setup, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
if not cmp_autopairs_setup then
    vim.g.noti(plugin)
    return
end

-- import nvim-cmp plugin safely (completions plugin)
plugin = 'cmp'
local cmp_setup, cmp = pcall(require, "cmp")
if not cmp_setup then
    vim.g.noti(plugin)
    return
end

-- make autopairs and completion work together
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
