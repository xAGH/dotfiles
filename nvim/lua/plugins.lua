vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use "wbthomason/packer.nvim" -- Install Plugins
    use "williamboman/mason.nvim" -- Install LSPs
    use 'navarasu/onedark.nvim' -- One Dark Theme
    use 'nvim-tree/nvim-tree.lua' -- File explorer
    use 'nvim-tree/nvim-web-devicons' -- Icons
    use "folke/which-key.nvim" -- Helps with keys mapping
    use 'nvim-lualine/lualine.nvim' -- Provides a status bar
    use 'numToStr/Comment.nvim' -- Helps to comment
    use "lukas-reineke/indent-blankline.nvim" -- Helps to see the identation in blank spaces
    use {
        'nvim-treesitter/nvim-treesitter', -- Code highlighting
        run = ":TSUpdate"
    }
    use {
        'nvim-telescope/telescope.nvim', -- Search files
        requires = { {'nvim-lua/plenary.nvim'} } -- Easy functions writting
    }
end)
