-- Safely import
local setup, treesitter = pcall(require, 'nvim-treesitter.configs')
if not setup then
    return
end

-- Setup
-- Safely import of common module
local setup, commons = pcall(require, 'core.common')
if not setup then
    return
end

treesitter.setup {
  ensure_installed = commons.languages,
  sync_install = true,
  auto_install = true,
  ignore_install = {  },
  highlight = {
    enable = true,
  },
}
