require('packer').startup(function ()
  use 'wbthomason/packer.nvim'
  -- github theme
  use 'projekt0n/github-nvim-theme' 

  -- buffer line
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

  -- status line
  use 'windwp/windline.nvim'

  -- nvim tree
  use 'kyazdani42/nvim-tree.lua'

  -- telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = 'nvim-lua/plenary.nvim',
  }
  
  -- toggle terminal
  use 'akinsho/toggleterm.nvim'

  -- show git message 
	use 'f-person/git-blame.nvim'

  -- comment line or section
  use 'terrortylor/nvim-comment'

  -- todo comment high light
  use {
		'folke/todo-comments.nvim',
		requires = 'nvim-lua/plenary.nvim',
	}

  -- glow to preview markdown 
  use 'ellisonleao/glow.nvim'

  -- nvim tree sitter
  use{
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
	}

  -- snippets auto complet
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'

  -- format markdown table
  use { 'godlygeek/tabular' }
  -- markdown highlight
  use { 'plasticboy/vim-markdown' }

  use'neovim/nvim-lspconfig'
	use'hrsh7th/nvim-cmp'
	use'hrsh7th/cmp-nvim-lsp'
	use'hrsh7th/cmp-buffer'
	use'hrsh7th/cmp-path'
	use'hrsh7th/cmp-cmdline'

	use'saadparwaiz1/cmp_luasnip'
	use'L3MON4D3/LuaSnip'
	use'onsails/lspkind.nvim'

  use'lukas-reineke/lsp-format.nvim'


end)
