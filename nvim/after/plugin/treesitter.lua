require'nvim-treesitter.configs'.setup {
  ensure_installed = require("core.common").languages,
  sync_install = true,
  auto_install = true,
  ignore_install = {  },
  highlight = {
    enable = true,
  },
}
