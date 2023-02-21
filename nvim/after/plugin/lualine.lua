require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'onedark',
        component_separators = ""
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'filetype'},
        lualine_y = {"require'lsp-status'.status()"},
        lualine_z = {{'os.date("%T")'}}
    },
}
