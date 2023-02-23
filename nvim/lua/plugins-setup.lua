local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'williamboman/mason.nvim' -- Install LSPs
    use 'navarasu/onedark.nvim' -- One Dark Theme
    use 'nvim-tree/nvim-tree.lua' -- File explorer
    use 'kyazdani42/nvim-web-devicons' -- Icons
    use 'folke/which-key.nvim' -- Helps with keys mapping
    use 'nvim-lualine/lualine.nvim' -- Provides a status bar
    use 'numToStr/Comment.nvim' -- Helps to comment
    use 'nanozuki/tabby.nvim'
    use 'lukas-reineke/indent-blankline.nvim' -- Helps to see the identation in blank spaces
    use {
        'nvim-treesitter/nvim-treesitter', -- Code highlighting
        run = ':TSUpdate'
    }
    use {
        'nvim-telescope/telescope.nvim', -- Search files
        requires = { {'nvim-lua/plenary.nvim'} } -- Easy functions writting
    }
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use 'tpope/vim-surround' -- Surround selected word with the specified characte

    if packer_bootstrap then
        require('packer').sync()
    end
end)
