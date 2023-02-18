require'nvim-treesitter.configs'.setup {
  ensure_installed = { "python", "java", "javascript", "typescript", "lua", "vim", "help" },
  sync_install = true,
  auto_install = true,
  ignore_install = {  },
  highlight = {
    enable = true,
  },
}
