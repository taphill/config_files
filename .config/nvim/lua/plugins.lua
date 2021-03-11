return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'

  use 'mhinz/vim-startify'

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-telescope/telescope-fzy-native.nvim'

  use 'nvim-treesitter/nvim-treesitter'

  use 'terrortylor/nvim-comment'

  use 'tjdevries/colorbuddy.nvim'
  use 'Th3Whit3Wolf/onebuddy'
end)
