vim.cmd 'packadd paq-nvim'         -- Load package
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function
paq{'savq/paq-nvim', opt=true}     -- Let Paq manage itself

paq 'kyazdani42/nvim-web-devicons'
paq 'kyazdani42/nvim-tree.lua'

paq 'nvim-lua/popup.nvim'
paq 'nvim-lua/plenary.nvim'
paq 'nvim-telescope/telescope.nvim' --uses popup & plenary

paq 'nvim-treesitter/nvim-treesitter'
paq 'nvim-treesitter/playground'

paq 'terrortylor/nvim-comment'
