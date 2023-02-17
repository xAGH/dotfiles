vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use "wbthomason/packer.nvim" -- Install Plugins
    use "williamboman/mason.nvim" -- Install LSPs
    use 'navarasu/onedark.nvim' -- One Dark Theme
    use {
        'nvim-telescope/telescope.nvim', -- Telescope search files
        requires = { {'nvim-lua/plenary.nvim'} } -- Telescope dependencies
    }
end)
