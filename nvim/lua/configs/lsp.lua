local is_installed = vim.g.ensure_installed

-- Safely import
local mason_lspconfig = is_installed('mason-lspconfig')
local mason = is_installed('mason')
local lspconfig = is_installed('lspconfig')
local telescope = is_installed('telescope.builtin')

if not (mason and mason_lspconfig and lspconfig and telescope) then return end

-- Configurations
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

mason.setup()
mason_lspconfig.setup(
    {
        ensure_installed = {
            'angularls', -- Angular
            'cssls', -- Css
            'dockerls', -- Dockerfile
            'docker_compose_language_service', -- Docker Compose
            'emmet_ls', -- Html snippets
            'eslint', -- Js and Ts formatter
            'html', --HTML
            'jdtls', -- Java
            'jsonls', -- Json
            'lua_ls', -- Lua
            'marksman', -- Markdown
            'pylsp', -- Python
            'tsserver', -- Typescript
            'yamlls', -- Yaml
        }
    }
)

-- Auto lsp setup
mason_lspconfig.setup_handlers {
    function(server_name)
        lspconfig[server_name].setup {}
    end,

    -- Custom setups
    ['eslint'] = function()
        lspconfig.eslint.setup {
            on_attach = function(_, bufnr)
                vim.api.nvim_create_autocmd('BufWritePre', {
                    buffer = bufnr,
                    command = 'EslintFixAll',
                })
            end,
        }
    end,

    ['jsonls'] = function()
        local cap = vim.lsp.protocol.make_client_capabilities()
        cap.textDocument.completion.completionItem.snippetSupport = true
        lspconfig.jsonls.setup {
            capabilities = cap
        }
    end,

    ['jdtls'] = function()
        lspconfig.jdtls.setup { cmd = { 'jdtls' } }
    end,

    ['lua_ls'] = function()
        lspconfig.lua_ls.setup {
            settings = {
                Lua = {
                    runtime = {
                        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                        version = 'LuaJIT',
                    },
                    diagnostics = {
                        -- Get the language server to recognize the `vim` global
                        globals = { 'vim' },
                    },
                    workspace = {
                        -- Make the server aware of Neovim runtime files
                        library = vim.api.nvim_get_runtime_file("", true),
                    },
                    -- Do not send telemetry data containing a randomized but unique identifier
                    telemetry = {
                        enable = false,
                    },
                },
            },
        }
    end,

    ['pylsp'] = function()
        lspconfig.pylsp.setup {
            settings = {
                pylsp = {
                    plugins = {
                        pycodestyle = {
                            ignore = { 'W391' },
                            maxLineLength = 100
                        }
                    }
                }
            }
        }
    end,

    ['yamlls'] = function()
        lspconfig.yamlls.setup {
            settings = {
                yaml = {
                    schemas = {
                        ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
                        ["../path/relative/to/file.yml"] = "/.github/workflows/*",
                        ["/path/from/root/of/project"] = "/.github/workflows/*",
                    },
                },
            }
        }
    end,
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics,
    { update_in_insert = true })

vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
        underline = true,
        virtual_text = {
            spacing = 5,
            severity_limit = 'Warning',
        },
        update_in_insert = true,
    }
)
