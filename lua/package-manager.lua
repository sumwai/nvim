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

  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'

end)
