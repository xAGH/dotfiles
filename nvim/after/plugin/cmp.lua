-- import nvim-cmp plugin safely
local plugin = 'cmp'
local cmp_status, cmp = pcall(require, plugin)
if not cmp_status then
    vim.g.noti(plugin)
    return
end

-- import luasnip plugin safely
plugin = 'luasnip'
local luasnip_status, luasnip = pcall(require, plugin)
if not luasnip_status then
    vim.g.noti(plugin)
  return
end

-- import lspkind plugin safely
plugin = 'lspkind'
local lspkind_status, lspkind = pcall(require, plugin)
if not lspkind_status then
    vim.g.noti(plugin)
  return
end

-- load vs-code like snippets from plugins (e.g. friendly-snippets)
require("luasnip/loaders/from_vscode").lazy_load()

vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
    ["<CR>"] = cmp.mapping.confirm({ select = false }),
  }),
  -- sources for autocompletion
  sources = cmp.config.sources({
    { name = "nvim_lsp" }, -- lsp
    { name = "luasnip" }, -- snippets
    { name = "buffer" }, -- text within current buffer
    { name = "path" }, -- file system paths
  }),
  -- configure lspkind for vs-code like icons
  formatting = {
    format = lspkind.cmp_format({
      maxwidth = 50,
      ellipsis_char = "...",
    }),
  },
})
