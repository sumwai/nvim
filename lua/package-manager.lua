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

end)
