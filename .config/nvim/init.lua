-- Setup
require 'plugins'

local utils = require('utils')
local map = utils.map
local g = vim.g
local win = vim.wo
local opt = vim.o -- Wait for vim.opt (nvim PR #13479)
local cmd = vim.cmd

-- Disable some built-in plugins we don't want
local disabled_built_ins = {
  'gzip', 'man', 'matchit', 'matchparen', 'shada_plugin', 'tarPlugin', 'tar', 'zipPlugin', 'zip'
}
for i = 1, 9 do g['loaded_' .. disabled_built_ins[i]] = 1 end

-- Colorscheme
opt.termguicolors = true
opt.background = 'dark'
cmd 'colorscheme gruvbox'

-- Settings
opt.expandtab       = true
opt.undolevels      = 1000
opt.ttimeoutlen     = 20
opt.shiftwidth      = 2
opt.softtabstop     = 2
opt.smartindent     = true
opt.tabstop         = 2
opt.synmaxcol       = 200
opt.cmdheight       = 2
opt.updatetime      = 200
opt.conceallevel    = 2
opt.cscopetagorder  = 0
opt.cscopepathcomp  = 3
opt.showbreak       = string.rep(' ', 3) -- Make it so that long lines wrap smartly

-- UI
opt.colorcolumn     = '100'
opt.wrap            = false
opt.cursorline      = true
opt.number          = true
opt.rnu             = true
opt.showcmd         = false
opt.pumblend        = 20
opt.pumheight       = 15
opt.scrolloff       = 12
opt.sidescrolloff   = 5

-- Status Line
opt.statusline = table.concat {
    '%#CursorLine#',
    ' ‹‹ ',
    '%f',
    ' ›› ',
    '%#DiffChange#',
    '%(  %M%R  %)',
    '%#CursorLine#',
}

-- Plugin Configs
require 'nvim-tree-config'
require('nvim_comment').setup()
--require('nvim-treesitter.configs').setup {
--  ensure_installed = {'lua', 'ruby'},
--  highlight = {
--    enable = true
--  }
--}

-- Mappings
map('n', '<space>e', ':NvimTreeToggle<CR>')
map('n', '<space>h', '<C-W><C-H>')
map('n', '<space>j', '<C-W><C-J>')
map('n', '<space>k', '<C-W><C-K>')
map('n', '<space>l', '<C-W><C-L>')
map('n', '<space>t', ':tabn<CR>')
map('n', '<space>r', ':tabp<CR>')
map('n', '<space>f', ':Telescope find_files<CR>')
map('n', '<space>s', ':Telescope live_grep<CR>')
map('n', '<space>b', ':Telescope buffers<CR>')
map('n', ',ws', ':write <bar> suspend<CR>')

map('v', ',c', ':%y+<CR>')
