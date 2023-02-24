-- Safely import
local plugin = 'mason'

local setup, mason = pcall(require, plugin)
if not setup then
    vim.g.noti(plugin)
    return
end

plugin = 'mason-lspconfig'
local setup_lspconfig, mason_lspconfig = pcall(require, plugin)
if not setup_lspconfig then
    vim.g.noti(plugin)
    return
end

-- Configurations
mason.setup()
mason_lspconfig.setup(
    {

    }
)

