require('packer').startup(function ()
  use 'wbthomason/packer.nvim'
  -- github theme
  use 'projekt0n/github-nvim-theme' 

  -- buffer line
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

end)
