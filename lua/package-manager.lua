require('packer').startup(function ()
  use 'wbthomason/packer.nvim'
  -- github theme
  use 'projekt0n/github-nvim-theme' 

  -- buffer line
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

  -- status line
  use 'windwp/windline.nvim'

  -- nerd tree
  use 'preservim/nerdtree'

  -- telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = 'nvim-lua/plenary.nvim',
  }
  
  -- toggle terminal
  use 'akinsho/toggleterm.nvim'
end)
