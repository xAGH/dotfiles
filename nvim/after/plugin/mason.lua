local set = require('core.keymaps').map
local is_installed = vim.g.ensure_installed

-- Safely import
local mason = is_installed('mason')
if not mason then return end

local mason_lspconfig = is_installed('mason-lspconfig')
if not mason_lspconfig then return end

local lspconfig = is_installed('lspconfig')
if not lspconfig then return end

local telescope = is_installed('telescope.builtin')
if not telescope then return end

-- Configurations
mason.setup()
mason_lspconfig.setup(
{
    ensure_installed = {
        -- "css_lsp",
        -- "docker-compose-language-service",
        -- "dockerfile-language-server",
        -- "lua-language-server", 
    }
}
)

-- Auto lsp setup
local lsp = vim.lsp.buf
mason_lspconfig.setup_handlers {
    function (server_name)
        lspconfig[server_name].setup {
            set('n', '<leader>rn', lsp.rename),
            set('n', '<leader>ca', lsp.code_action),

            set('n', 'gd', lsp.definition),
            set('n', 'gi', lsp.implementation),
            set('n', 'gp', telescope.lsp_references),
            set('n', 'K', lsp.hover)
        }
    end,

    -- Custom setups
    -- ["rust_analyzer"] = function ()
        -- require("rust-tools").setup {}
        -- end
    }
