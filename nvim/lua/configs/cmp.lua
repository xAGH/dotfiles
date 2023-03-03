local is_installed = vim.g.ensure_installed

-- Safely imports
local cmp = is_installed('cmp')
local luasnip = is_installed('luasnip')
local lspkind = is_installed('lspkind')
if not (cmp and luasnip and lspkind) then return end

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
