--NOTE: Packages are in the runtimepath, this file is only loaded for updates.

vim.cmd 'packadd paq-nvim'         -- Load package
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function
paq{'savq/paq-nvim', opt=true}     -- Let Paq manage itself

paq 'kyazdani42/nvim-web-devicons'
paq 'kyazdani42/nvim-tree.lua'

paq 'nvim-lua/popup.nvim'
paq 'nvim-lua/plenary.nvim'
--paq 'romgrk/fzy-lua-native'
paq 'nvim-telescope/telescope.nvim' --uses popup & plenary
--paq 'nvim-telescope/telescope-fzy-native.nvim'
