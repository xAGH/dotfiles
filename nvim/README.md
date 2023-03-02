<h1 align="center">
<img src="https://upload.wikimedia.org/wikipedia/commons/4/4f/Neovim-logo.svg" width="400" /> 
<br/>
<h3 align="center">
<a href="#install">Install</a>
·
<a href="#configuration">Configuration</a>
·
<a href="#plugins">Plugins</a></h3>
</h1>

----------
Hi, here is my neovim configuration using [Packer](https://github.com/wbthomason/packer.nvim).

## Requisites
You should have installed:
> *__Note__: Requisites are taken from the package manager: [Packer](hhttps://github.com/wbthomason/packer.nvim)*

* NeoVim version >= 0.5.0
* _Optional_: A nerd font for icons

<h2 id="install">Instalation</h2>

You can clone this repo with:
```bash
git clone --depth 1 https://github.com/xAGH/dotfiles
```
That will clone my dotfiles configuration in you current working directory.
Now you have to move the dotfiles/nvim folder to your ~/.config folder.

You can also make a symbolic link with the command:
```bash
ln -s /absolute/path/to_my/dotfiles/nvim /home/$USER/.config/
```
----------
<h2 id="configuration">Configuration</h2>

To configure nvim just type `nvim`. That will open nvim and automatically Lazy Vim will install and setup all specified plugins.

----------

<h2 id="plugins">My Plugins</h2>

| Plugin   | Description|
|:--------------- | :--------------- |
| [Packer][Packer] | Plugin manager for NeoVim |
| [OneDark][OneDark] | Dark colorscheme |
| [Nvim Tree][NvimTree] | Vscode style file explorer |
| [Nvim Web Devicons][DevIcons]   | Provide icons |
| [Treesitter][Treesitter] | Code Highlighting |
| [Telescope][Telescope] | Fuzzy Finder |
| [Which Key][WhichKey] | Display a popup with possible key bindings of the command that start|
| [Lualine][Lualine] | Status line |
| [Comment][Comment] | Smart and powerful commenting |
| [Tabby][Tabby] | A declarative and highly configurable tabline |
| [Indent Blankline][IndentBlankline] | Add indentation guides to all lines |
| [Vim Surround][VimSurround] |  Provides mappings to easily delete, change and add such surroundings in pairs|
| [Cmp][Cmp] | Completion sources are installed from external repositories and "sourced" |
| [Luasnip][Luasnip] | Snippets provider |
| [Friendly Snippets][FriendlySnippets] | More snippets... |
| [Nvim Autopairs][NvimAutopairs] | A super powerful autopair plugin for Neovim that supports multiple characters |
| [Lspkind][Lspkind] | Provides autocompletion and suggestions |
| [Nvim Ts Autotag][NvimTsAutotag] | Use treesitter to autoclose and autorename html tags |
| [Betterterm][BetterTerm] | Better integrated terminal, like vscode |
| [Fugitive][Fugitive] | Git CLI integration |

[Packer]: https://github.com/wbthomason/packer.nvim
[OneDark]: https://github.com/joshdick/onedark.vim
[NvimTree]: https://github.com/nvim-tree/nvim-tree.lua
[DevIcons]: https://github.com/kyazdani42/nvim-web-devicons
[Treesitter]: https://github.com/nvim-treesitter/nvim-treesitter
[Telescope]: https://github.com/nvim-telescope/telescope.nvim
[WhichKey]: https://github.com/folke/which-key.nvim
[Lualine]: https://github.com/nvim-lualine/lualine.nvim
[Comment]: https://github.com/numToStr/Comment.nvim
[Tabby]: https://github.com/nanozuki/tabby.nvim
[IndentBlankline]: https://github.com/lukas-reineke/indent-blankline.nvim
[VimSurround]: https://github.com/tpope/vim-surround
[Cmp]: https://github.com/hrsh7th/nvim-cmp
[Luasnip]: https://github.com/L3MON4D3/LuaSnip
[FriendlySnippets]: https://github.com/rafamadriz/friendly-snippets
[NvimAutopairs]: https://github.com/windwp/nvim-autopairs
[Lspkind]: https://github.com/onsails/lspkind.nvim
[NvimTsAutotag]: https://github.com/windwp/nvim-ts-autotag
[BetterTerm]: https://github.com/CRAG666/betterTerm.nvim
[Fugitive]: https://github.com/tpope/vim-fugitive
